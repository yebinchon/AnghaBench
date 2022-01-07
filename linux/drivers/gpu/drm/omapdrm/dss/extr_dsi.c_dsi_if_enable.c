
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dummy; } ;


 int DSI_CTRL ;
 int DSSDBG (char*,int) ;
 int DSSERR (char*,int) ;
 int EIO ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int ,int ) ;
 int wait_for_bit_change (struct dsi_data*,int ,int ,int) ;

__attribute__((used)) static inline int dsi_if_enable(struct dsi_data *dsi, bool enable)
{
 DSSDBG("dsi_if_enable(%d)\n", enable);

 enable = enable ? 1 : 0;
 REG_FLD_MOD(dsi, DSI_CTRL, enable, 0, 0);

 if (!wait_for_bit_change(dsi, DSI_CTRL, 0, enable)) {
  DSSERR("Failed to set dsi_if_enable to %d\n", enable);
  return -EIO;
 }

 return 0;
}
