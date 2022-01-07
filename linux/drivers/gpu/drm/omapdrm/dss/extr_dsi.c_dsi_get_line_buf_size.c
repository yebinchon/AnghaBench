
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {TYPE_1__* data; } ;
struct TYPE_2__ {int quirks; } ;


 int BUG () ;
 int DSI_GNQ ;
 int DSI_QUIRK_GNQ ;
 int REG_GET (struct dsi_data*,int ,int,int) ;

__attribute__((used)) static unsigned int dsi_get_line_buf_size(struct dsi_data *dsi)
{
 int val;





 if (!(dsi->data->quirks & DSI_QUIRK_GNQ))
  return 1023 * 3;

 val = REG_GET(dsi, DSI_GNQ, 14, 12);

 switch (val) {
 case 1:
  return 512 * 3;
 case 2:
  return 682 * 3;
 case 3:
  return 853 * 3;
 case 4:
  return 1024 * 3;
 case 5:
  return 1194 * 3;
 case 6:
  return 1365 * 3;
 case 7:
  return 1920 * 3;
 default:
  BUG();
  return 0;
 }
}
