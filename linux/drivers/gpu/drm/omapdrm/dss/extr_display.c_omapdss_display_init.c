
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* dev; int * name; } ;
struct TYPE_2__ {int of_node; } ;


 int GFP_KERNEL ;
 int * devm_kasprintf (TYPE_1__*,int ,char*,int) ;
 int disp_num_counter ;
 int of_alias_get_id (int ,char*) ;
 int of_property_read_string (int ,char*,int **) ;

void omapdss_display_init(struct omap_dss_device *dssdev)
{
 int id;





 id = of_alias_get_id(dssdev->dev->of_node, "display");
 if (id < 0)
  id = disp_num_counter++;


 of_property_read_string(dssdev->dev->of_node, "label", &dssdev->name);

 if (dssdev->name == ((void*)0))
  dssdev->name = devm_kasprintf(dssdev->dev, GFP_KERNEL,
           "display%u", id);
}
