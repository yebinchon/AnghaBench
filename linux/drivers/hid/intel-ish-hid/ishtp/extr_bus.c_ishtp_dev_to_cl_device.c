
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int dummy; } ;
struct device {int dummy; } ;


 struct ishtp_cl_device* to_ishtp_cl_device (struct device*) ;

struct ishtp_cl_device *ishtp_dev_to_cl_device(struct device *device)
{
 return to_ishtp_cl_device(device);
}
