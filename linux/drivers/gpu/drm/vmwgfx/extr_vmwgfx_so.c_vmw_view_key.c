
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;



__attribute__((used)) static u32 vmw_view_key(u32 user_key, enum vmw_view_type view_type)
{
 return user_key | (view_type << 20);
}
