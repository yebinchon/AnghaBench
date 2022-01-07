
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_info {int max_link_rate; int max_lane_count; } ;
struct device_node {int dummy; } ;
struct analogix_dp_device {TYPE_2__* plat_data; struct video_info video_info; TYPE_1__* dev; } ;
struct TYPE_4__ {int dev_type; } ;
struct TYPE_3__ {struct device_node* of_node; } ;





 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
{
 struct device_node *dp_node = dp->dev->of_node;
 struct video_info *video_info = &dp->video_info;

 switch (dp->plat_data->dev_type) {
 case 129:
 case 128:




  video_info->max_link_rate = 0x0A;
  video_info->max_lane_count = 0x04;
  break;
 case 130:




  of_property_read_u32(dp_node, "samsung,link-rate",
         &video_info->max_link_rate);
  of_property_read_u32(dp_node, "samsung,lane-count",
         &video_info->max_lane_count);
  break;
 }

 return 0;
}
