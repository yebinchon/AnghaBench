
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;


 scalar_t__ SVGA_COTABLE_MAX_IDS ;
 int vmw_view_max ;

__attribute__((used)) static bool vmw_view_id_ok(u32 user_key, enum vmw_view_type view_type)
{
 return (user_key < SVGA_COTABLE_MAX_IDS &&
  view_type < vmw_view_max);
}
