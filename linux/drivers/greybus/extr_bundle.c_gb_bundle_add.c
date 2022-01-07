
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bundle {int dev; } ;


 int dev_err (int *,char*,int) ;
 int device_add (int *) ;
 int trace_gb_bundle_add (struct gb_bundle*) ;

int gb_bundle_add(struct gb_bundle *bundle)
{
 int ret;

 ret = device_add(&bundle->dev);
 if (ret) {
  dev_err(&bundle->dev, "failed to register bundle: %d\n", ret);
  return ret;
 }

 trace_gb_bundle_add(bundle);

 return 0;
}
