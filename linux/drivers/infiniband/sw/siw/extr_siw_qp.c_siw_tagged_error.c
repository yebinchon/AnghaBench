
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum siw_access_state { ____Placeholder_siw_access_state } siw_access_state ;
typedef enum ddp_ecode { ____Placeholder_ddp_ecode } ddp_ecode ;


 int DDP_ECODE_T_BASE_BOUNDS ;
 int DDP_ECODE_T_INVALID_STAG ;
 int DDP_ECODE_T_STAG_NOT_ASSOC ;




 int WARN_ON (int) ;

enum ddp_ecode siw_tagged_error(enum siw_access_state state)
{
 switch (state) {
 case 128:
  return DDP_ECODE_T_INVALID_STAG;
 case 130:
  return DDP_ECODE_T_BASE_BOUNDS;
 case 129:
  return DDP_ECODE_T_STAG_NOT_ASSOC;
 case 131:





  return DDP_ECODE_T_INVALID_STAG;
 default:
  WARN_ON(1);
  return DDP_ECODE_T_INVALID_STAG;
 }
}
