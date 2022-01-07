
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dev; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int dsi_runtime_get(struct dsi_data *dsi)
{
 int r;

 DSSDBG("dsi_runtime_get\n");

 r = pm_runtime_get_sync(dsi->dev);
 WARN_ON(r < 0);
 return r < 0 ? r : 0;
}
