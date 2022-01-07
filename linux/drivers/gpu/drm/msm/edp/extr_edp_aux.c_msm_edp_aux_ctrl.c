
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_aux {scalar_t__ base; } ;


 int DBG (char*,int) ;
 int EDP_AUX_CTRL_ENABLE ;
 int EDP_AUX_CTRL_RESET ;
 scalar_t__ REG_EDP_AUX_CTRL ;
 int edp_read (scalar_t__) ;
 int edp_write (scalar_t__,int ) ;
 int usleep_range (int,int) ;
 int wmb () ;

void msm_edp_aux_ctrl(struct edp_aux *aux, int enable)
{
 u32 data;

 DBG("enable=%d", enable);
 data = edp_read(aux->base + REG_EDP_AUX_CTRL);

 if (enable) {
  data |= EDP_AUX_CTRL_RESET;
  edp_write(aux->base + REG_EDP_AUX_CTRL, data);

  wmb();
  usleep_range(500, 1000);

  data &= ~EDP_AUX_CTRL_RESET;
  data |= EDP_AUX_CTRL_ENABLE;
  edp_write(aux->base + REG_EDP_AUX_CTRL, data);
 } else {
  data &= ~EDP_AUX_CTRL_ENABLE;
  edp_write(aux->base + REG_EDP_AUX_CTRL, data);
 }
}
