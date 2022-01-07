
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {void* driver_data; } ;



void ishtp_set_drvdata(struct ishtp_cl_device *cl_device, void *data)
{
 cl_device->driver_data = data;
}
