
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct push_buffer {int dummy; } ;
struct host1x {TYPE_1__* cdma_pb_op; } ;
struct TYPE_2__ {int (* init ) (struct push_buffer*) ;} ;


 int stub1 (struct push_buffer*) ;

__attribute__((used)) static inline void host1x_hw_pushbuffer_init(struct host1x *host,
          struct push_buffer *pb)
{
 host->cdma_pb_op->init(pb);
}
