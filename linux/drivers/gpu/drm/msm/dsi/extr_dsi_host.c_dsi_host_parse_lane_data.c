
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct property {int dummy; } ;
struct msm_dsi_host {int num_data_lanes; int dlane_swap; TYPE_1__* pdev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int**) ;
 int DRM_DEV_DEBUG (struct device*,char*) ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int EINVAL ;
 struct property* of_find_property (struct device_node*,char*,int*) ;
 int of_property_read_u32_array (struct device_node*,char*,int*,int) ;
 int** supported_data_lane_swaps ;

__attribute__((used)) static int dsi_host_parse_lane_data(struct msm_dsi_host *msm_host,
        struct device_node *ep)
{
 struct device *dev = &msm_host->pdev->dev;
 struct property *prop;
 u32 lane_map[4];
 int ret, i, len, num_lanes;

 prop = of_find_property(ep, "data-lanes", &len);
 if (!prop) {
  DRM_DEV_DEBUG(dev,
   "failed to find data lane mapping, using default\n");
  return 0;
 }

 num_lanes = len / sizeof(u32);

 if (num_lanes < 1 || num_lanes > 4) {
  DRM_DEV_ERROR(dev, "bad number of data lanes\n");
  return -EINVAL;
 }

 msm_host->num_data_lanes = num_lanes;

 ret = of_property_read_u32_array(ep, "data-lanes", lane_map,
      num_lanes);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to read lane data\n");
  return ret;
 }





 for (i = 0; i < ARRAY_SIZE(supported_data_lane_swaps); i++) {
  const int *swap = supported_data_lane_swaps[i];
  int j;
  for (j = 0; j < num_lanes; j++) {
   if (lane_map[j] < 0 || lane_map[j] > 3)
    DRM_DEV_ERROR(dev, "bad physical lane entry %u\n",
     lane_map[j]);

   if (swap[lane_map[j]] != j)
    break;
  }

  if (j == num_lanes) {
   msm_host->dlane_swap = i;
   return 0;
  }
 }

 return -EINVAL;
}
