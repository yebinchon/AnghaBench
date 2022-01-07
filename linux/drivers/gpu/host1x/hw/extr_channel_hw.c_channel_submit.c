
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x_waitlist {int dummy; } ;
struct host1x_syncpt {scalar_t__ base; } ;
struct host1x_job {int syncpt_id; scalar_t__ class; int syncpt_end; scalar_t__ serialize; int syncpt_incrs; int num_relocs; int num_gathers; struct host1x_channel* channel; } ;
struct host1x_channel {int submitlock; TYPE_1__* dev; int cdma; } ;
struct host1x {struct host1x_syncpt* syncpt; } ;
struct TYPE_2__ {int parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HOST1X_CLASS_HOST1X ;
 int HOST1X_INTR_ACTION_SUBMIT_COMPLETE ;
 int HOST1X_OPCODE_NOP ;
 int WARN (int,char*) ;
 struct host1x* dev_get_drvdata (int ) ;
 int dev_name (TYPE_1__*) ;
 int host1x_cdma_begin (int *,struct host1x_job*) ;
 int host1x_cdma_end (int *,struct host1x_job*) ;
 int host1x_cdma_push (int *,int ,int ) ;
 int host1x_channel_set_streamid (struct host1x_channel*) ;
 int host1x_class_host_wait_syncpt (int,int ) ;
 int host1x_hw_syncpt_assign_to_channel (struct host1x*,struct host1x_syncpt*,struct host1x_channel*) ;
 int host1x_intr_add_action (struct host1x*,struct host1x_syncpt*,int ,int ,struct host1x_channel*,struct host1x_waitlist*,int *) ;
 int host1x_opcode_setclass (scalar_t__,int ,int) ;
 int host1x_syncpt_incr_max (struct host1x_syncpt*,int ) ;
 int host1x_syncpt_read_max (struct host1x_syncpt*) ;
 int host1x_uclass_wait_syncpt_r () ;
 int kfree (struct host1x_waitlist*) ;
 struct host1x_waitlist* kzalloc (int,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int submit_gathers (struct host1x_job*) ;
 int synchronize_syncpt_base (struct host1x_job*) ;
 int trace_host1x_channel_submit (int ,int ,int ,int,int ) ;
 int trace_host1x_channel_submitted (int ,int ,int ) ;

__attribute__((used)) static int channel_submit(struct host1x_job *job)
{
 struct host1x_channel *ch = job->channel;
 struct host1x_syncpt *sp;
 u32 user_syncpt_incrs = job->syncpt_incrs;
 u32 prev_max = 0;
 u32 syncval;
 int err;
 struct host1x_waitlist *completed_waiter = ((void*)0);
 struct host1x *host = dev_get_drvdata(ch->dev->parent);

 sp = host->syncpt + job->syncpt_id;
 trace_host1x_channel_submit(dev_name(ch->dev),
        job->num_gathers, job->num_relocs,
        job->syncpt_id, job->syncpt_incrs);


 prev_max = job->syncpt_end = host1x_syncpt_read_max(sp);


 err = mutex_lock_interruptible(&ch->submitlock);
 if (err)
  goto error;

 completed_waiter = kzalloc(sizeof(*completed_waiter), GFP_KERNEL);
 if (!completed_waiter) {
  mutex_unlock(&ch->submitlock);
  err = -ENOMEM;
  goto error;
 }

 host1x_channel_set_streamid(ch);


 err = host1x_cdma_begin(&ch->cdma, job);
 if (err) {
  mutex_unlock(&ch->submitlock);
  goto error;
 }

 if (job->serialize) {




  host1x_cdma_push(&ch->cdma,
     host1x_opcode_setclass(HOST1X_CLASS_HOST1X,
     host1x_uclass_wait_syncpt_r(), 1),
     host1x_class_host_wait_syncpt(job->syncpt_id,
     host1x_syncpt_read_max(sp)));
 }


 if (sp->base)
  synchronize_syncpt_base(job);

 syncval = host1x_syncpt_incr_max(sp, user_syncpt_incrs);

 host1x_hw_syncpt_assign_to_channel(host, sp, ch);

 job->syncpt_end = syncval;


 if (job->class)
  host1x_cdma_push(&ch->cdma,
     host1x_opcode_setclass(job->class, 0, 0),
     HOST1X_OPCODE_NOP);

 submit_gathers(job);


 host1x_cdma_end(&ch->cdma, job);

 trace_host1x_channel_submitted(dev_name(ch->dev), prev_max, syncval);


 err = host1x_intr_add_action(host, sp, syncval,
         HOST1X_INTR_ACTION_SUBMIT_COMPLETE, ch,
         completed_waiter, ((void*)0));
 completed_waiter = ((void*)0);
 WARN(err, "Failed to set submit complete interrupt");

 mutex_unlock(&ch->submitlock);

 return 0;

error:
 kfree(completed_waiter);
 return err;
}
