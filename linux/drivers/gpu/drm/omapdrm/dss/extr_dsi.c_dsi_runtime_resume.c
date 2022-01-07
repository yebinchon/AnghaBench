
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int is_enabled; } ;
struct device {int dummy; } ;


 struct dsi_data* dev_get_drvdata (struct device*) ;
 int smp_wmb () ;

__attribute__((used)) static int dsi_runtime_resume(struct device *dev)
{
 struct dsi_data *dsi = dev_get_drvdata(dev);

 dsi->is_enabled = 1;

 smp_wmb();

 return 0;
}
