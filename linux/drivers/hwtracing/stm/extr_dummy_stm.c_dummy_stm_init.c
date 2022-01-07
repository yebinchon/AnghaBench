
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int link; int packet; scalar_t__ sw_nchannels; scalar_t__ sw_end; scalar_t__ sw_start; } ;


 int DUMMY_STM_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ STP_CHANNEL_MAX ;
 scalar_t__ STP_MASTER_MAX ;
 int THIS_MODULE ;
 TYPE_1__* dummy_stm ;
 int dummy_stm_link ;
 int dummy_stm_packet ;
 int kasprintf (int ,char*,int) ;
 int kfree (int ) ;
 scalar_t__ master_max ;
 scalar_t__ master_min ;
 scalar_t__ nr_channels ;
 int nr_dummies ;
 int stm_register_device (int *,TYPE_1__*,int ) ;
 int stm_unregister_device (TYPE_1__*) ;

__attribute__((used)) static int dummy_stm_init(void)
{
 int i, ret = -ENOMEM;

 if (nr_dummies < 0 || nr_dummies > DUMMY_STM_MAX)
  return -EINVAL;

 if (master_min > master_max ||
     master_max > STP_MASTER_MAX ||
     nr_channels > STP_CHANNEL_MAX)
  return -EINVAL;

 for (i = 0; i < nr_dummies; i++) {
  dummy_stm[i].name = kasprintf(GFP_KERNEL, "dummy_stm.%d", i);
  if (!dummy_stm[i].name)
   goto fail_unregister;

  dummy_stm[i].sw_start = master_min;
  dummy_stm[i].sw_end = master_max;
  dummy_stm[i].sw_nchannels = nr_channels;
  dummy_stm[i].packet = dummy_stm_packet;
  dummy_stm[i].link = dummy_stm_link;

  ret = stm_register_device(((void*)0), &dummy_stm[i], THIS_MODULE);
  if (ret)
   goto fail_free;
 }

 return 0;

fail_unregister:
 for (i--; i >= 0; i--) {
  stm_unregister_device(&dummy_stm[i]);
fail_free:
  kfree(dummy_stm[i].name);
 }

 return ret;

}
