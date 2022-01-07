
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct dss_device {int dummy; } ;
struct dpi_data {int dss_model; int lock; struct dss_device* dss; struct platform_device* pdev; int data_lines; } ;
struct device_node {struct dpi_data* data; } ;
typedef enum dss_model { ____Placeholder_dss_model } dss_model ;


 int DSSERR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct dpi_data* devm_kzalloc (int *,int,int ) ;
 int dpi_init_output_port (struct dpi_data*,struct device_node*) ;
 int dpi_init_regulator (struct dpi_data*) ;
 int mutex_init (int *) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

int dpi_init_port(struct dss_device *dss, struct platform_device *pdev,
    struct device_node *port, enum dss_model dss_model)
{
 struct dpi_data *dpi;
 struct device_node *ep;
 u32 datalines;
 int r;

 dpi = devm_kzalloc(&pdev->dev, sizeof(*dpi), GFP_KERNEL);
 if (!dpi)
  return -ENOMEM;

 ep = of_get_next_child(port, ((void*)0));
 if (!ep)
  return 0;

 r = of_property_read_u32(ep, "data-lines", &datalines);
 of_node_put(ep);
 if (r) {
  DSSERR("failed to parse datalines\n");
  return r;
 }

 dpi->data_lines = datalines;

 dpi->pdev = pdev;
 dpi->dss_model = dss_model;
 dpi->dss = dss;
 port->data = dpi;

 mutex_init(&dpi->lock);

 r = dpi_init_regulator(dpi);
 if (r)
  return r;

 return dpi_init_output_port(dpi, port);
}
