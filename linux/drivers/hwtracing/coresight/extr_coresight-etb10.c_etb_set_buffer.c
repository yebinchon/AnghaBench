
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int head; } ;
struct cs_buffers {int nr_pages; unsigned long cur; unsigned long offset; int data_size; } ;
struct coresight_device {int dummy; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 struct cs_buffers* etm_perf_sink_config (struct perf_output_handle*) ;
 int local_set (int *,int ) ;

__attribute__((used)) static int etb_set_buffer(struct coresight_device *csdev,
     struct perf_output_handle *handle)
{
 int ret = 0;
 unsigned long head;
 struct cs_buffers *buf = etm_perf_sink_config(handle);

 if (!buf)
  return -EINVAL;


 head = handle->head & ((buf->nr_pages << PAGE_SHIFT) - 1);


 buf->cur = head / PAGE_SIZE;


 buf->offset = head % PAGE_SIZE;

 local_set(&buf->data_size, 0);

 return ret;
}
