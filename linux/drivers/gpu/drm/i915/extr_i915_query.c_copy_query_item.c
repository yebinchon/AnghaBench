
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_query_item {scalar_t__ length; int data_ptr; } ;


 int EFAULT ;
 int EINVAL ;
 int access_ok (int ,int) ;
 scalar_t__ copy_from_user (void*,int ,size_t) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int copy_query_item(void *query_hdr, size_t query_sz,
      u32 total_length,
      struct drm_i915_query_item *query_item)
{
 if (query_item->length == 0)
  return total_length;

 if (query_item->length < total_length)
  return -EINVAL;

 if (copy_from_user(query_hdr, u64_to_user_ptr(query_item->data_ptr),
      query_sz))
  return -EFAULT;

 if (!access_ok(u64_to_user_ptr(query_item->data_ptr),
         total_length))
  return -EFAULT;

 return 0;
}
