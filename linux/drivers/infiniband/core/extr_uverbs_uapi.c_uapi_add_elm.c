
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uverbs_api {int radix; } ;


 int ENOMEM ;
 int EOVERFLOW ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ UVERBS_API_KEY_ERR ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;
 int radix_tree_insert (int *,scalar_t__,void*) ;

__attribute__((used)) static void *uapi_add_elm(struct uverbs_api *uapi, u32 key, size_t alloc_size)
{
 void *elm;
 int rc;

 if (key == UVERBS_API_KEY_ERR)
  return ERR_PTR(-EOVERFLOW);

 elm = kzalloc(alloc_size, GFP_KERNEL);
 if (!elm)
  return ERR_PTR(-ENOMEM);
 rc = radix_tree_insert(&uapi->radix, key, elm);
 if (rc) {
  kfree(elm);
  return ERR_PTR(rc);
 }

 return elm;
}
