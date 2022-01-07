
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mem_ctl_info {int dummy; } ;
struct err_info {int err_code; int channel; int csrow; int syndrome; int offset; int page; } ;
typedef enum hw_event_mc_err_type { ____Placeholder_hw_event_mc_err_type } hw_event_mc_err_type ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_DEFERRED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int WARN (int,char*) ;
 int edac_mc_handle_error (int,struct mem_ctl_info*,int,int ,int ,int ,int ,int ,int,char const*,char*) ;

__attribute__((used)) static void __log_ecc_error(struct mem_ctl_info *mci, struct err_info *err,
       u8 ecc_type)
{
 enum hw_event_mc_err_type err_type;
 const char *string;

 if (ecc_type == 2)
  err_type = HW_EVENT_ERR_CORRECTED;
 else if (ecc_type == 1)
  err_type = HW_EVENT_ERR_UNCORRECTED;
 else if (ecc_type == 3)
  err_type = HW_EVENT_ERR_DEFERRED;
 else {
  WARN(1, "Something is rotten in the state of Denmark.\n");
  return;
 }

 switch (err->err_code) {
 case 133:
  string = "";
  break;
 case 130:
  string = "Failed to map error addr to a node";
  break;
 case 131:
  string = "Failed to map error addr to a csrow";
  break;
 case 132:
  string = "Unknown syndrome - possible error reporting race";
  break;
 case 128:
  string = "MCA_SYND not valid - unknown syndrome and csrow";
  break;
 case 129:
  string = "Cannot decode normalized address";
  break;
 default:
  string = "WTF error";
  break;
 }

 edac_mc_handle_error(err_type, mci, 1,
        err->page, err->offset, err->syndrome,
        err->csrow, err->channel, -1,
        string, "");
}
