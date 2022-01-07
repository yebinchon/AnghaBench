
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * colorkey; } ;
struct rcar_du_device {TYPE_1__ props; int ddev; } ;


 int ENOMEM ;
 int * drm_property_create_range (int ,int ,char*,int ,int) ;

__attribute__((used)) static int rcar_du_properties_init(struct rcar_du_device *rcdu)
{





 rcdu->props.colorkey =
  drm_property_create_range(rcdu->ddev, 0, "colorkey",
       0, 0x01ffffff);
 if (rcdu->props.colorkey == ((void*)0))
  return -ENOMEM;

 return 0;
}
