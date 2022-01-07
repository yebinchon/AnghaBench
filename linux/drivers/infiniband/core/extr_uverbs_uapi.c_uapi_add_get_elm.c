
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uverbs_api {int radix; } ;


 int EEXIST ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 int IS_ERR (void*) ;
 scalar_t__ WARN_ON (int) ;
 void* radix_tree_lookup (int *,int ) ;
 void* uapi_add_elm (struct uverbs_api*,int ,size_t) ;

__attribute__((used)) static void *uapi_add_get_elm(struct uverbs_api *uapi, u32 key,
         size_t alloc_size, bool *exists)
{
 void *elm;

 elm = uapi_add_elm(uapi, key, alloc_size);
 if (!IS_ERR(elm)) {
  *exists = 0;
  return elm;
 }

 if (elm != ERR_PTR(-EEXIST))
  return elm;

 elm = radix_tree_lookup(&uapi->radix, key);
 if (WARN_ON(!elm))
  return ERR_PTR(-EINVAL);
 *exists = 1;
 return elm;
}
