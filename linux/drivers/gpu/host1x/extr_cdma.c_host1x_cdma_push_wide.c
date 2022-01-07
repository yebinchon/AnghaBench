
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct push_buffer {scalar_t__ pos; scalar_t__ size; } ;
struct host1x_channel {int dev; } ;
struct host1x_cdma {unsigned int slots_free; unsigned int slots_used; struct push_buffer push_buffer; } ;
struct host1x {int dummy; } ;


 struct host1x_channel* cdma_to_channel (struct host1x_cdma*) ;
 struct host1x* cdma_to_host1x (struct host1x_cdma*) ;
 int dev_name (int ) ;
 int host1x_cdma_wait_pushbuffer_space (struct host1x*,struct host1x_cdma*,unsigned int) ;
 scalar_t__ host1x_debug_trace_cmdbuf ;
 int host1x_pushbuffer_push (struct push_buffer*,int ,int ) ;
 unsigned int host1x_pushbuffer_space (struct push_buffer*) ;
 int trace_host1x_cdma_push_wide (int ,int ,int ,int ,int ) ;

void host1x_cdma_push_wide(struct host1x_cdma *cdma, u32 op1, u32 op2,
      u32 op3, u32 op4)
{
 struct host1x_channel *channel = cdma_to_channel(cdma);
 struct host1x *host1x = cdma_to_host1x(cdma);
 struct push_buffer *pb = &cdma->push_buffer;
 unsigned int needed = 2, extra = 0, i;
 unsigned int space = cdma->slots_free;

 if (host1x_debug_trace_cmdbuf)
  trace_host1x_cdma_push_wide(dev_name(channel->dev), op1, op2,
         op3, op4);


 if (pb->pos + 16 > pb->size) {
  extra = (pb->size - pb->pos) / 8;
  needed += extra;
 }

 host1x_cdma_wait_pushbuffer_space(host1x, cdma, needed);
 space = host1x_pushbuffer_space(pb);

 cdma->slots_free = space - needed;
 cdma->slots_used += needed;
 for (i = 0; i < extra; i++)
  host1x_pushbuffer_push(pb, op4, op4);

 host1x_pushbuffer_push(pb, op1, op2);
 host1x_pushbuffer_push(pb, op3, op4);
}
