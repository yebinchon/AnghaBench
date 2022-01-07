
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_output_handle {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct list_head {int dummy; } ;
struct etm_event_data {int dummy; } ;
struct coresight_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* enable ) (struct coresight_device*,struct perf_event*,int ) ;} ;


 int CS_MODE_PERF ;
 int PERF_AUX_FLAG_TRUNCATED ;
 scalar_t__ PERF_HES_STOPPED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int coresight_disable_path (struct list_head*) ;
 scalar_t__ coresight_enable_path (struct list_head*,int ,struct perf_output_handle*) ;
 struct coresight_device* coresight_get_sink (struct list_head*) ;
 int csdev_src ;
 int ctx_handle ;
 struct list_head* etm_event_cpu_path (struct etm_event_data*,int) ;
 struct coresight_device* per_cpu (int ,int) ;
 struct etm_event_data* perf_aux_output_begin (struct perf_output_handle*,struct perf_event*) ;
 int perf_aux_output_end (struct perf_output_handle*,int ) ;
 int perf_aux_output_flag (struct perf_output_handle*,int ) ;
 int smp_processor_id () ;
 TYPE_2__* source_ops (struct coresight_device*) ;
 scalar_t__ stub1 (struct coresight_device*,struct perf_event*,int ) ;
 struct perf_output_handle* this_cpu_ptr (int *) ;

__attribute__((used)) static void etm_event_start(struct perf_event *event, int flags)
{
 int cpu = smp_processor_id();
 struct etm_event_data *event_data;
 struct perf_output_handle *handle = this_cpu_ptr(&ctx_handle);
 struct coresight_device *sink, *csdev = per_cpu(csdev_src, cpu);
 struct list_head *path;

 if (!csdev)
  goto fail;





 event_data = perf_aux_output_begin(handle, event);
 if (!event_data)
  goto fail;

 path = etm_event_cpu_path(event_data, cpu);

 sink = coresight_get_sink(path);
 if (WARN_ON_ONCE(!sink))
  goto fail_end_stop;


 if (coresight_enable_path(path, CS_MODE_PERF, handle))
  goto fail_end_stop;


 event->hw.state = 0;


 if (source_ops(csdev)->enable(csdev, event, CS_MODE_PERF))
  goto fail_disable_path;

out:
 return;

fail_disable_path:
 coresight_disable_path(path);
fail_end_stop:
 perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
 perf_aux_output_end(handle, 0);
fail:
 event->hw.state = PERF_HES_STOPPED;
 goto out;
}
