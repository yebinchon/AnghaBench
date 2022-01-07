
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_idlist_t {int id; int data_type; int entry; } ;
struct smscore_device_t {int clientslock; } ;
struct smscore_client_t {int idlist; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct smscore_idlist_t* kzalloc (int,int ) ;
 int list_add_locked (int *,int *,int *) ;
 int pr_err (char*) ;
 struct smscore_client_t* smscore_find_client (struct smscore_device_t*,int,int) ;

__attribute__((used)) static int smscore_validate_client(struct smscore_device_t *coredev,
       struct smscore_client_t *client,
       int data_type, int id)
{
 struct smscore_idlist_t *listentry;
 struct smscore_client_t *registered_client;

 if (!client) {
  pr_err("bad parameter.\n");
  return -EINVAL;
 }
 registered_client = smscore_find_client(coredev, data_type, id);
 if (registered_client == client)
  return 0;

 if (registered_client) {
  pr_err("The msg ID already registered to another client.\n");
  return -EEXIST;
 }
 listentry = kzalloc(sizeof(*listentry), GFP_KERNEL);
 if (!listentry)
  return -ENOMEM;

 listentry->id = id;
 listentry->data_type = data_type;
 list_add_locked(&listentry->entry, &client->idlist,
   &coredev->clientslock);
 return 0;
}
