
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llcc_drv_data {int bcast_regmap; } ;


 int DRP_ECC_ERROR_CNTR_CLEAR ;
 int DRP_INTERRUPT_CLEAR ;
 int DRP_TRP_CNT_CLEAR ;
 int DRP_TRP_INT_CLEAR ;
 int EDAC_LLCC ;
 int EINVAL ;
 int KERN_CRIT ;




 int TRP_ECC_ERROR_CNTR_CLEAR ;
 int TRP_INTERRUPT_0_CLEAR ;
 int edac_printk (int ,int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int
qcom_llcc_clear_error_status(int err_type, struct llcc_drv_data *drv)
{
 int ret = 0;

 switch (err_type) {
 case 131:
 case 130:
  ret = regmap_write(drv->bcast_regmap, DRP_INTERRUPT_CLEAR,
       DRP_TRP_INT_CLEAR);
  if (ret)
   return ret;

  ret = regmap_write(drv->bcast_regmap, DRP_ECC_ERROR_CNTR_CLEAR,
       DRP_TRP_CNT_CLEAR);
  if (ret)
   return ret;
  break;
 case 129:
 case 128:
  ret = regmap_write(drv->bcast_regmap, TRP_INTERRUPT_0_CLEAR,
       DRP_TRP_INT_CLEAR);
  if (ret)
   return ret;

  ret = regmap_write(drv->bcast_regmap, TRP_ECC_ERROR_CNTR_CLEAR,
       DRP_TRP_CNT_CLEAR);
  if (ret)
   return ret;
  break;
 default:
  ret = -EINVAL;
  edac_printk(KERN_CRIT, EDAC_LLCC, "Unexpected error type: %d\n",
       err_type);
 }
 return ret;
}
