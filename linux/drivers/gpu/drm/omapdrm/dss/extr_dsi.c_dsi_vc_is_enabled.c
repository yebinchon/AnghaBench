
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dummy; } ;


 int DSI_VC_CTRL (int) ;
 int REG_GET (struct dsi_data*,int ,int ,int ) ;

__attribute__((used)) static bool dsi_vc_is_enabled(struct dsi_data *dsi, int channel)
{
 return REG_GET(dsi, DSI_VC_CTRL(channel), 0, 0);
}
