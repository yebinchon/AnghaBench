
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {struct gb_control* product_string; struct gb_control* vendor_string; int connection; } ;
struct device {int dummy; } ;


 int gb_connection_destroy (int ) ;
 int kfree (struct gb_control*) ;
 struct gb_control* to_gb_control (struct device*) ;

__attribute__((used)) static void gb_control_release(struct device *dev)
{
 struct gb_control *control = to_gb_control(dev);

 gb_connection_destroy(control->connection);

 kfree(control->vendor_string);
 kfree(control->product_string);

 kfree(control);
}
