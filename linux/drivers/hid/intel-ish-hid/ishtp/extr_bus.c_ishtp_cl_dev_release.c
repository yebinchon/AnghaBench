
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_ishtp_cl_device (struct device*) ;

__attribute__((used)) static void ishtp_cl_dev_release(struct device *dev)
{
 kfree(to_ishtp_cl_device(dev));
}
