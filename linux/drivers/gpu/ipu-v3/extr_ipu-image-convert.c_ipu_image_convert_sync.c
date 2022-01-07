
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int dummy; } ;
struct ipu_image_convert_run {int ctx; } ;
struct ipu_image {int dummy; } ;
struct completion {int dummy; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef enum ipu_ic_task { ____Placeholder_ipu_ic_task } ipu_ic_task ;


 int ETIMEDOUT ;
 scalar_t__ IS_ERR (struct ipu_image_convert_run*) ;
 int PTR_ERR (struct ipu_image_convert_run*) ;
 int image_convert_sync_complete ;
 int init_completion (struct completion*) ;
 struct ipu_image_convert_run* ipu_image_convert (struct ipu_soc*,int,struct ipu_image*,struct ipu_image*,int,int ,struct completion*) ;
 int ipu_image_convert_unprepare (int ) ;
 int kfree (struct ipu_image_convert_run*) ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

int ipu_image_convert_sync(struct ipu_soc *ipu, enum ipu_ic_task ic_task,
      struct ipu_image *in, struct ipu_image *out,
      enum ipu_rotate_mode rot_mode)
{
 struct ipu_image_convert_run *run;
 struct completion comp;
 int ret;

 init_completion(&comp);

 run = ipu_image_convert(ipu, ic_task, in, out, rot_mode,
    image_convert_sync_complete, &comp);
 if (IS_ERR(run))
  return PTR_ERR(run);

 ret = wait_for_completion_timeout(&comp, msecs_to_jiffies(10000));
 ret = (ret == 0) ? -ETIMEDOUT : 0;

 ipu_image_convert_unprepare(run->ctx);
 kfree(run);

 return ret;
}
