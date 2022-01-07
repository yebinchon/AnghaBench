
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dss_device {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum dss_model { ____Placeholder_dss_model } dss_model ;



__attribute__((used)) static inline int dpi_init_port(struct dss_device *dss,
    struct platform_device *pdev,
    struct device_node *port,
    enum dss_model dss_model)
{
 return 0;
}
