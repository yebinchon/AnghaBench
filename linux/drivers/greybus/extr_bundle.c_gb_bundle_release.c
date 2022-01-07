
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bundle {struct gb_bundle* cport_desc; struct gb_bundle* state; } ;
struct device {int dummy; } ;


 int kfree (struct gb_bundle*) ;
 struct gb_bundle* to_gb_bundle (struct device*) ;
 int trace_gb_bundle_release (struct gb_bundle*) ;

__attribute__((used)) static void gb_bundle_release(struct device *dev)
{
 struct gb_bundle *bundle = to_gb_bundle(dev);

 trace_gb_bundle_release(bundle);

 kfree(bundle->state);
 kfree(bundle->cport_desc);
 kfree(bundle);
}
