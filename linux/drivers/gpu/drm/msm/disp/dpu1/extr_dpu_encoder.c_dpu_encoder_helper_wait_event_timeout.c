
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_wait_info {scalar_t__ timeout_ms; int atomic_cnt; int * wq; } ;
typedef scalar_t__ s64 ;
typedef int int32_t ;


 scalar_t__ atomic_read (int ) ;
 int ktime_get () ;
 scalar_t__ ktime_to_ms (int ) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int trace_dpu_enc_wait_event_timeout (int ,int ,int,scalar_t__,scalar_t__,scalar_t__) ;
 int wait_event_timeout (int ,int,scalar_t__) ;

__attribute__((used)) static int dpu_encoder_helper_wait_event_timeout(
  int32_t drm_id,
  int32_t hw_id,
  struct dpu_encoder_wait_info *info)
{
 int rc = 0;
 s64 expected_time = ktime_to_ms(ktime_get()) + info->timeout_ms;
 s64 jiffies = msecs_to_jiffies(info->timeout_ms);
 s64 time;

 do {
  rc = wait_event_timeout(*(info->wq),
    atomic_read(info->atomic_cnt) == 0, jiffies);
  time = ktime_to_ms(ktime_get());

  trace_dpu_enc_wait_event_timeout(drm_id, hw_id, rc, time,
       expected_time,
       atomic_read(info->atomic_cnt));

 } while (atomic_read(info->atomic_cnt) && (rc == 0) &&
   (time < expected_time));

 return rc;
}
