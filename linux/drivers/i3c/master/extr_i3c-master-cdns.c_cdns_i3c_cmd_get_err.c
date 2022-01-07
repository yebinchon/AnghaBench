
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_i3c_cmd {int error; } ;
typedef enum i3c_error_code { ____Placeholder_i3c_error_code } i3c_error_code ;






 int I3C_ERROR_M0 ;
 int I3C_ERROR_M1 ;
 int I3C_ERROR_M2 ;
 int I3C_ERROR_UNKNOWN ;

__attribute__((used)) static enum i3c_error_code cdns_i3c_cmd_get_err(struct cdns_i3c_cmd *cmd)
{
 switch (cmd->error) {
 case 131:
  return I3C_ERROR_M0;

 case 130:
  return I3C_ERROR_M1;

 case 129:
 case 128:
  return I3C_ERROR_M2;

 default:
  break;
 }

 return I3C_ERROR_UNKNOWN;
}
