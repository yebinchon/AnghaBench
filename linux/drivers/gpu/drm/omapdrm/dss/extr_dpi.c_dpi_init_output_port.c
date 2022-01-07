
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_dss_device {char* name; int owner; int * ops; int of_ports; int dispc_channel; int type; int id; int * dev; } ;
struct dpi_data {int id; TYPE_1__* pdev; struct omap_dss_device output; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int OMAP_DISPLAY_TYPE_DPI ;
 int OMAP_DSS_OUTPUT_DPI ;
 int THIS_MODULE ;
 int dpi_get_channel (struct dpi_data*) ;
 int dpi_ops ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int omapdss_device_init_output (struct omap_dss_device*) ;
 int omapdss_device_register (struct omap_dss_device*) ;

__attribute__((used)) static int dpi_init_output_port(struct dpi_data *dpi, struct device_node *port)
{
 struct omap_dss_device *out = &dpi->output;
 u32 port_num = 0;
 int r;

 of_property_read_u32(port, "reg", &port_num);
 dpi->id = port_num <= 2 ? port_num : 0;

 switch (port_num) {
 case 2:
  out->name = "dpi.2";
  break;
 case 1:
  out->name = "dpi.1";
  break;
 case 0:
 default:
  out->name = "dpi.0";
  break;
 }

 out->dev = &dpi->pdev->dev;
 out->id = OMAP_DSS_OUTPUT_DPI;
 out->type = OMAP_DISPLAY_TYPE_DPI;
 out->dispc_channel = dpi_get_channel(dpi);
 out->of_ports = BIT(port_num);
 out->ops = &dpi_ops;
 out->owner = THIS_MODULE;

 r = omapdss_device_init_output(out);
 if (r < 0)
  return r;

 omapdss_device_register(out);

 return 0;
}
