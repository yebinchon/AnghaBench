
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct host1x_job_gather {int words; scalar_t__ offset; int bo; scalar_t__ base; } ;
struct host1x_job {unsigned int num_gathers; struct host1x_job_gather* gathers; TYPE_1__* channel; } ;
struct host1x_cdma {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct device* dev; struct host1x_cdma cdma; } ;


 scalar_t__ HOST1X_OPCODE_NOP ;
 int dev_err (struct device*,char*,scalar_t__*) ;
 int host1x_cdma_push (struct host1x_cdma*,scalar_t__,scalar_t__) ;
 int host1x_cdma_push_wide (struct host1x_cdma*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ host1x_opcode_gather (int ) ;
 scalar_t__ host1x_opcode_gather_wide (int ) ;
 scalar_t__ lower_32_bits (scalar_t__) ;
 int trace_write_gather (struct host1x_cdma*,int ,scalar_t__,int ) ;
 scalar_t__ upper_32_bits (scalar_t__) ;

__attribute__((used)) static void submit_gathers(struct host1x_job *job)
{
 struct host1x_cdma *cdma = &job->channel->cdma;

 struct device *dev = job->channel->dev;

 unsigned int i;

 for (i = 0; i < job->num_gathers; i++) {
  struct host1x_job_gather *g = &job->gathers[i];
  dma_addr_t addr = g->base + g->offset;
  u32 op2, op3;

  op2 = lower_32_bits(addr);
  op3 = upper_32_bits(addr);

  trace_write_gather(cdma, g->bo, g->offset, g->words);

  if (op3 != 0) {






   dev_err(dev, "invalid gather for push buffer %pad\n",
    &addr);
   continue;

  } else {
   u32 op1 = host1x_opcode_gather(g->words);

   host1x_cdma_push(cdma, op1, op2);
  }
 }
}
