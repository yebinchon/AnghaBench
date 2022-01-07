
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx2341x_handler {int is_50hz; TYPE_1__* video_gop_size; } ;
struct TYPE_2__ {int default_value; } ;



void cx2341x_handler_set_50hz(struct cx2341x_handler *cxhdl, int is_50hz)
{
 cxhdl->is_50hz = is_50hz;
 cxhdl->video_gop_size->default_value = cxhdl->is_50hz ? 12 : 15;
}
