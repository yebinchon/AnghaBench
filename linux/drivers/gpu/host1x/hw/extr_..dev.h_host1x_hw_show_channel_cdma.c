
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct output {int dummy; } ;
struct host1x_channel {int dummy; } ;
struct host1x {TYPE_1__* debug_op; } ;
struct TYPE_2__ {int (* show_channel_cdma ) (struct host1x*,struct host1x_channel*,struct output*) ;} ;


 int stub1 (struct host1x*,struct host1x_channel*,struct output*) ;

__attribute__((used)) static inline void host1x_hw_show_channel_cdma(struct host1x *host,
            struct host1x_channel *channel,
            struct output *o)
{
 host->debug_op->show_channel_cdma(host, channel, o);
}
