
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ishtp_cl_device {struct device dev; } ;



struct device *ishtp_device(struct ishtp_cl_device *device)
{
 return &device->dev;
}
