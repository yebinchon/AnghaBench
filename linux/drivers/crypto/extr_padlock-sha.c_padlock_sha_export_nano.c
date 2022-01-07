
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;


 int crypto_shash_statesize (int ) ;
 int memcpy (void*,void*,int) ;
 void* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int padlock_sha_export_nano(struct shash_desc *desc,
    void *out)
{
 int statesize = crypto_shash_statesize(desc->tfm);
 void *sctx = shash_desc_ctx(desc);

 memcpy(out, sctx, statesize);
 return 0;
}
