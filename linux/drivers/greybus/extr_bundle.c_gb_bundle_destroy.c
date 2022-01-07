
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bundle {int dev; int links; } ;


 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int list_del (int *) ;
 int put_device (int *) ;
 int trace_gb_bundle_destroy (struct gb_bundle*) ;

void gb_bundle_destroy(struct gb_bundle *bundle)
{
 trace_gb_bundle_destroy(bundle);

 if (device_is_registered(&bundle->dev))
  device_del(&bundle->dev);

 list_del(&bundle->links);

 put_device(&bundle->dev);
}
