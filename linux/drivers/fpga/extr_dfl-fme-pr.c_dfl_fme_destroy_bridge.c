
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_fme_bridge {int br; } ;


 int platform_device_unregister (int ) ;

__attribute__((used)) static void dfl_fme_destroy_bridge(struct dfl_fme_bridge *fme_br)
{
 platform_device_unregister(fme_br->br);
}
