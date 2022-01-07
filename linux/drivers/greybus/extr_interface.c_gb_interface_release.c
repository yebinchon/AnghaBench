
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct gb_interface*) ;
 struct gb_interface* to_gb_interface (struct device*) ;
 int trace_gb_interface_release (struct gb_interface*) ;

__attribute__((used)) static void gb_interface_release(struct device *dev)
{
 struct gb_interface *intf = to_gb_interface(dev);

 trace_gb_interface_release(intf);

 kfree(intf);
}
