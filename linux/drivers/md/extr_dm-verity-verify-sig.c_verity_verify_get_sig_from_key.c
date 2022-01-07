
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_key_payload {int data; int datalen; } ;
struct key {int sem; } ;
struct dm_verity_sig_opts {int sig_size; int sig; } ;


 int EKEYREVOKED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int down_read (int *) ;
 int key_put (struct key*) ;
 int key_type_user ;
 int kmalloc (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 struct key* request_key (int *,char const*,int *) ;
 int up_read (int *) ;
 struct user_key_payload* user_key_payload_locked (struct key*) ;

__attribute__((used)) static int verity_verify_get_sig_from_key(const char *key_desc,
     struct dm_verity_sig_opts *sig_opts)
{
 struct key *key;
 const struct user_key_payload *ukp;
 int ret = 0;

 key = request_key(&key_type_user,
   key_desc, ((void*)0));
 if (IS_ERR(key))
  return PTR_ERR(key);

 down_read(&key->sem);

 ukp = user_key_payload_locked(key);
 if (!ukp) {
  ret = -EKEYREVOKED;
  goto end;
 }

 sig_opts->sig = kmalloc(ukp->datalen, GFP_KERNEL);
 if (!sig_opts->sig) {
  ret = -ENOMEM;
  goto end;
 }
 sig_opts->sig_size = ukp->datalen;

 memcpy(sig_opts->sig, ukp->data, sig_opts->sig_size);

end:
 up_read(&key->sem);
 key_put(key);

 return ret;
}
