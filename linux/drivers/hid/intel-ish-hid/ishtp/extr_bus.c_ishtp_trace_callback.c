
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_device {TYPE_1__* ishtp_dev; } ;
struct TYPE_2__ {void* print_log; } ;



void *ishtp_trace_callback(struct ishtp_cl_device *cl_device)
{
 return cl_device->ishtp_dev->print_log;
}
