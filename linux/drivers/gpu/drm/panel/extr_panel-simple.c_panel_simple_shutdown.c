
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_simple {int base; } ;
struct device {int dummy; } ;


 struct panel_simple* dev_get_drvdata (struct device*) ;
 int panel_simple_disable (int *) ;
 int panel_simple_unprepare (int *) ;

__attribute__((used)) static void panel_simple_shutdown(struct device *dev)
{
 struct panel_simple *panel = dev_get_drvdata(dev);

 panel_simple_disable(&panel->base);
 panel_simple_unprepare(&panel->base);
}
