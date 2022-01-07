
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dispc; } ;


 int DSS_PLL_CONTROL ;
 int REG_FLD_MOD (struct dss_device*,int ,int ,int,int) ;
 int dispc_lcd_enable_signal (int ,int ) ;
 int dispc_pck_free_enable (int ,int ) ;

void dss_sdi_disable(struct dss_device *dss)
{
 dispc_lcd_enable_signal(dss->dispc, 0);

 dispc_pck_free_enable(dss->dispc, 0);


 REG_FLD_MOD(dss, DSS_PLL_CONTROL, 0, 18, 18);
}
