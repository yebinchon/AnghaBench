
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct component_match {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENODEV ;
 int add_components_mdp (struct device*,struct component_match**) ;
 int compare_name_mdp ;
 int compare_of ;
 struct device* device_find_child (struct device*,int *,int ) ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,int ) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int of_platform_depopulate (struct device*) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static int add_display_components(struct device *dev,
      struct component_match **matchptr)
{
 struct device *mdp_dev;
 int ret;







 if (of_device_is_compatible(dev->of_node, "qcom,mdss") ||
     of_device_is_compatible(dev->of_node, "qcom,sdm845-mdss")) {
  ret = of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
  if (ret) {
   DRM_DEV_ERROR(dev, "failed to populate children devices\n");
   return ret;
  }

  mdp_dev = device_find_child(dev, ((void*)0), compare_name_mdp);
  if (!mdp_dev) {
   DRM_DEV_ERROR(dev, "failed to find MDSS MDP node\n");
   of_platform_depopulate(dev);
   return -ENODEV;
  }

  put_device(mdp_dev);


  drm_of_component_match_add(dev, matchptr, compare_of,
        mdp_dev->of_node);
 } else {

  mdp_dev = dev;
 }

 ret = add_components_mdp(mdp_dev, matchptr);
 if (ret)
  of_platform_depopulate(dev);

 return ret;
}
