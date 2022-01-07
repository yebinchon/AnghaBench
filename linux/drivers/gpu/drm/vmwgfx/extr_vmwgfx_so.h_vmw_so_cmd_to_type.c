
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum vmw_so_type { ____Placeholder_vmw_so_type } vmw_so_type ;
 int vmw_so_bs ;
 int vmw_so_ds ;
 int vmw_so_el ;
 int vmw_so_max ;
 int vmw_so_rs ;
 int vmw_so_so ;
 int vmw_so_ss ;

__attribute__((used)) static inline enum vmw_so_type vmw_so_cmd_to_type(u32 id)
{
 switch (id) {
 case 137:
 case 131:
  return vmw_so_el;
 case 139:
 case 133:
  return vmw_so_bs;
 case 138:
 case 132:
  return vmw_so_ds;
 case 136:
 case 130:
  return vmw_so_rs;
 case 135:
 case 129:
  return vmw_so_ss;
 case 134:
 case 128:
  return vmw_so_so;
 default:
  break;
 }
 return vmw_so_max;
}
