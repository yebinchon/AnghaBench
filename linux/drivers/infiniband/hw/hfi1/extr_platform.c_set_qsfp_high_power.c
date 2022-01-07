
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__* cache; } ;
struct hfi1_pportdata {TYPE_2__* dd; TYPE_1__ qsfp_info; } ;
struct TYPE_4__ {int hfi1_id; } ;


 int EIO ;
 size_t QSFP_MOD_PWR_OFFS ;
 scalar_t__ QSFP_POWER_CLASS_1 ;
 scalar_t__ QSFP_POWER_CLASS_4 ;
 size_t QSFP_PWR_CTRL_BYTE_OFFS ;
 scalar_t__ get_qsfp_power_class (scalar_t__) ;
 int msleep (int) ;
 int qsfp_write (struct hfi1_pportdata*,int ,size_t,scalar_t__*,int) ;

__attribute__((used)) static int set_qsfp_high_power(struct hfi1_pportdata *ppd)
{
 u8 cable_power_class = 0, power_ctrl_byte = 0;
 u8 *cache = ppd->qsfp_info.cache;
 int ret;

 cable_power_class = get_qsfp_power_class(cache[QSFP_MOD_PWR_OFFS]);

 if (cable_power_class > QSFP_POWER_CLASS_1) {
  power_ctrl_byte = cache[QSFP_PWR_CTRL_BYTE_OFFS];

  power_ctrl_byte |= 1;
  power_ctrl_byte &= ~(0x2);

  ret = qsfp_write(ppd, ppd->dd->hfi1_id,
     QSFP_PWR_CTRL_BYTE_OFFS,
     &power_ctrl_byte, 1);
  if (ret != 1)
   return -EIO;

  if (cable_power_class > QSFP_POWER_CLASS_4) {
   power_ctrl_byte |= (1 << 2);
   ret = qsfp_write(ppd, ppd->dd->hfi1_id,
      QSFP_PWR_CTRL_BYTE_OFFS,
      &power_ctrl_byte, 1);
   if (ret != 1)
    return -EIO;
  }


  msleep(300);
 }
 return 0;
}
