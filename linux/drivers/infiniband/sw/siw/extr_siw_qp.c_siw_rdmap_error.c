
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum siw_access_state { ____Placeholder_siw_access_state } siw_access_state ;
typedef enum rdmap_ecode { ____Placeholder_rdmap_ecode } rdmap_ecode ;






 int RDMAP_ECODE_ACCESS_RIGHTS ;
 int RDMAP_ECODE_BASE_BOUNDS ;
 int RDMAP_ECODE_INVALID_STAG ;
 int RDMAP_ECODE_STAG_NOT_ASSOC ;
 int RDMAP_ECODE_UNSPECIFIED ;

enum rdmap_ecode siw_rdmap_error(enum siw_access_state state)
{
 switch (state) {
 case 128:
  return RDMAP_ECODE_INVALID_STAG;
 case 130:
  return RDMAP_ECODE_BASE_BOUNDS;
 case 129:
  return RDMAP_ECODE_STAG_NOT_ASSOC;
 case 131:
  return RDMAP_ECODE_ACCESS_RIGHTS;
 default:
  return RDMAP_ECODE_UNSPECIFIED;
 }
}
