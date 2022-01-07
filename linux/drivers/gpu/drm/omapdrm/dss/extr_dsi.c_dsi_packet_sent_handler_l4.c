
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_packet_sent_handler_data {int completion; struct dsi_data* dsi; } ;
struct dsi_data {int update_channel; } ;


 int DSI_VC_CTRL (int const) ;
 scalar_t__ REG_GET (struct dsi_data*,int ,int,int) ;
 int complete (int ) ;

__attribute__((used)) static void dsi_packet_sent_handler_l4(void *data, u32 mask)
{
 struct dsi_packet_sent_handler_data *l4_data =
  (struct dsi_packet_sent_handler_data *) data;
 struct dsi_data *dsi = l4_data->dsi;
 const int channel = dsi->update_channel;

 if (REG_GET(dsi, DSI_VC_CTRL(channel), 5, 5) == 0)
  complete(l4_data->completion);
}
