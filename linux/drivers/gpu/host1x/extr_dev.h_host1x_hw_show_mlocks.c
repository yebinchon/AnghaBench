
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct output {int dummy; } ;
struct host1x {TYPE_1__* debug_op; } ;
struct TYPE_2__ {int (* show_mlocks ) (struct host1x*,struct output*) ;} ;


 int stub1 (struct host1x*,struct output*) ;

__attribute__((used)) static inline void host1x_hw_show_mlocks(struct host1x *host, struct output *o)
{
 host->debug_op->show_mlocks(host, o);
}
