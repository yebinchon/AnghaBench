
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct led_classdev {TYPE_1__* dev; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {struct fwnode_handle* fwnode; } ;


 int GFP_KERNEL ;
 int fwnode_property_count_u32 (struct fwnode_handle*,char*) ;
 scalar_t__ fwnode_property_read_u32_array (struct fwnode_handle*,char*,int *,int) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;

u32 *led_get_default_pattern(struct led_classdev *led_cdev, unsigned int *size)
{
 struct fwnode_handle *fwnode = led_cdev->dev->fwnode;
 u32 *pattern;
 int count;

 count = fwnode_property_count_u32(fwnode, "led-pattern");
 if (count < 0)
  return ((void*)0);

 pattern = kcalloc(count, sizeof(*pattern), GFP_KERNEL);
 if (!pattern)
  return ((void*)0);

 if (fwnode_property_read_u32_array(fwnode, "led-pattern", pattern, count)) {
  kfree(pattern);
  return ((void*)0);
 }

 *size = count;

 return pattern;
}
