
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct intel_th_device {int num_resources; struct resource* resource; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct resource* kmemdup (struct resource*,int,int ) ;

__attribute__((used)) static int intel_th_device_add_resources(struct intel_th_device *thdev,
      struct resource *res, int nres)
{
 struct resource *r;

 r = kmemdup(res, sizeof(*res) * nres, GFP_KERNEL);
 if (!r)
  return -ENOMEM;

 thdev->resource = r;
 thdev->num_resources = nres;

 return 0;
}
