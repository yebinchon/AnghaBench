
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct llcc_drv_data {int dummy; } ;
struct edac_device_ctl_info {struct llcc_drv_data* pvt_info; } ;


 int EDAC_LLCC ;
 int EINVAL ;
 int KERN_CRIT ;




 int dump_syn_reg_values (struct llcc_drv_data*,int ,int) ;
 int edac_device_handle_ce (struct edac_device_ctl_info*,int ,int ,char*) ;
 int edac_device_handle_ue (struct edac_device_ctl_info*,int ,int ,char*) ;
 int edac_printk (int ,int ,char*,int) ;

__attribute__((used)) static int
dump_syn_reg(struct edac_device_ctl_info *edev_ctl, int err_type, u32 bank)
{
 struct llcc_drv_data *drv = edev_ctl->pvt_info;
 int ret;

 ret = dump_syn_reg_values(drv, bank, err_type);
 if (ret)
  return ret;

 switch (err_type) {
 case 131:
  edac_device_handle_ce(edev_ctl, 0, bank,
          "LLCC Data RAM correctable Error");
  break;
 case 130:
  edac_device_handle_ue(edev_ctl, 0, bank,
          "LLCC Data RAM uncorrectable Error");
  break;
 case 129:
  edac_device_handle_ce(edev_ctl, 0, bank,
          "LLCC Tag RAM correctable Error");
  break;
 case 128:
  edac_device_handle_ue(edev_ctl, 0, bank,
          "LLCC Tag RAM uncorrectable Error");
  break;
 default:
  ret = -EINVAL;
  edac_printk(KERN_CRIT, EDAC_LLCC, "Unexpected error type: %d\n",
       err_type);
 }

 return ret;
}
