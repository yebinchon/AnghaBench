
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hdmi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int hdmi_runtime_get(struct omap_hdmi *hdmi)
{
 int r;

 DSSDBG("hdmi_runtime_get\n");

 r = pm_runtime_get_sync(&hdmi->pdev->dev);
 WARN_ON(r < 0);
 if (r < 0)
  return r;

 return 0;
}
