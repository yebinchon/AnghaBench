
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dev; } ;
struct dsi_data {int dummy; } ;


 struct dsi_data* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct dsi_data *to_dsi_data(struct omap_dss_device *dssdev)
{
 return dev_get_drvdata(dssdev->dev);
}
