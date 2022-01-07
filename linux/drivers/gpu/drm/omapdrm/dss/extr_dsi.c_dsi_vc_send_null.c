
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dummy; } ;


 int MIPI_DSI_NULL_PACKET ;
 int dsi_vc_send_long (struct dsi_data*,int,int ,int *,int ,int ) ;

__attribute__((used)) static int dsi_vc_send_null(struct dsi_data *dsi, int channel)
{
 return dsi_vc_send_long(dsi, channel, MIPI_DSI_NULL_PACKET, ((void*)0), 0, 0);
}
