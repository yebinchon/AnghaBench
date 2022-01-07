
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct sync_timeline {char* name; } ;
struct seq_file {int dummy; } ;
struct dma_fence {TYPE_1__* ops; int timestamp; int flags; } ;
typedef int s64 ;
struct TYPE_2__ {int (* timeline_value_str ) (struct dma_fence*,char*,int) ;int (* fence_value_str ) (struct dma_fence*,char*,int) ;} ;


 int DMA_FENCE_FLAG_TIMESTAMP_BIT ;
 int dma_fence_get_status_locked (struct dma_fence*) ;
 struct sync_timeline* dma_fence_parent (struct dma_fence*) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int strlen (char*) ;
 int stub1 (struct dma_fence*,char*,int) ;
 int stub2 (struct dma_fence*,char*,int) ;
 int sync_status_str (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sync_print_fence(struct seq_file *s,
        struct dma_fence *fence, bool show)
{
 struct sync_timeline *parent = dma_fence_parent(fence);
 int status;

 status = dma_fence_get_status_locked(fence);

 seq_printf(s, "  %s%sfence %s",
     show ? parent->name : "",
     show ? "_" : "",
     sync_status_str(status));

 if (test_bit(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags)) {
  struct timespec64 ts64 =
   ktime_to_timespec64(fence->timestamp);

  seq_printf(s, "@%lld.%09ld", (s64)ts64.tv_sec, ts64.tv_nsec);
 }

 if (fence->ops->timeline_value_str &&
  fence->ops->fence_value_str) {
  char value[64];
  bool success;

  fence->ops->fence_value_str(fence, value, sizeof(value));
  success = strlen(value);

  if (success) {
   seq_printf(s, ": %s", value);

   fence->ops->timeline_value_str(fence, value,
             sizeof(value));

   if (strlen(value))
    seq_printf(s, " / %s", value);
  }
 }

 seq_putc(s, '\n');
}
