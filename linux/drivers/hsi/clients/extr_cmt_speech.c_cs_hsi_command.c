
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs_hsi_iface {int dummy; } ;


 int CS_CMD_MASK ;
 int CS_PARAM_MASK ;
 int CS_TX_DATA_READY ;
 int EINVAL ;

 int TARGET_MASK ;

 int cs_hsi_write_on_control (struct cs_hsi_iface*,int) ;
 int cs_hsi_write_on_data (struct cs_hsi_iface*,int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static int cs_hsi_command(struct cs_hsi_iface *hi, u32 cmd)
{
 int ret = 0;

 local_bh_disable();
 switch (cmd & TARGET_MASK) {
 case 128:
  ret = cs_hsi_write_on_control(hi, cmd);
  break;
 case 129:
  if ((cmd & CS_CMD_MASK) == CS_TX_DATA_READY)
   ret = cs_hsi_write_on_data(hi, cmd & CS_PARAM_MASK);
  else
   ret = -EINVAL;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 local_bh_enable();

 return ret;
}
