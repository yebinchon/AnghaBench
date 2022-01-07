
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipu_image_convert_run {int list; int out_phys; int in_phys; struct ipu_image_convert_ctx* ctx; } ;
struct TYPE_7__ {int phys0; } ;
struct TYPE_8__ {TYPE_3__ base; } ;
struct TYPE_5__ {int phys0; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct ipu_image_convert_ctx {int next_tile; scalar_t__ cur_buf_num; TYPE_4__ out; TYPE_2__ in; struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {struct ipu_image_convert_run* current_run; int irqlock; } ;


 int convert_start (struct ipu_image_convert_run*,int ) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int do_run(struct ipu_image_convert_run *run)
{
 struct ipu_image_convert_ctx *ctx = run->ctx;
 struct ipu_image_convert_chan *chan = ctx->chan;

 lockdep_assert_held(&chan->irqlock);

 ctx->in.base.phys0 = run->in_phys;
 ctx->out.base.phys0 = run->out_phys;

 ctx->cur_buf_num = 0;
 ctx->next_tile = 1;


 list_del(&run->list);
 chan->current_run = run;

 return convert_start(run, 0);
}
