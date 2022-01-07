
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int reference_count; } ;



void ishtp_get_device(struct ishtp_cl_device *cl_device)
{
 cl_device->reference_count++;
}
