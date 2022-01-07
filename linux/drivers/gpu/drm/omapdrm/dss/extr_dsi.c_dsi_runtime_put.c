
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dev; } ;


 int DSSDBG (char*) ;
 int ENOSYS ;
 int WARN_ON (int) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void dsi_runtime_put(struct dsi_data *dsi)
{
 int r;

 DSSDBG("dsi_runtime_put\n");

 r = pm_runtime_put_sync(dsi->dev);
 WARN_ON(r < 0 && r != -ENOSYS);
}
