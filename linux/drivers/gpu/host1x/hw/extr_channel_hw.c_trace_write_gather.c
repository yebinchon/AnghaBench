
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x_cdma {int dummy; } ;
struct host1x_bo {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ TRACE_MAX_LENGTH ;
 TYPE_1__* cdma_to_channel (struct host1x_cdma*) ;
 int dev_name (struct device*) ;
 void* host1x_bo_mmap (struct host1x_bo*) ;
 int host1x_bo_munmap (struct host1x_bo*,void*) ;
 scalar_t__ host1x_debug_trace_cmdbuf ;
 int min (int,scalar_t__) ;
 int trace_host1x_cdma_push_gather (int ,struct host1x_bo*,int,int,void*) ;

__attribute__((used)) static void trace_write_gather(struct host1x_cdma *cdma, struct host1x_bo *bo,
          u32 offset, u32 words)
{
 struct device *dev = cdma_to_channel(cdma)->dev;
 void *mem = ((void*)0);

 if (host1x_debug_trace_cmdbuf)
  mem = host1x_bo_mmap(bo);

 if (mem) {
  u32 i;




  for (i = 0; i < words; i += TRACE_MAX_LENGTH) {
   u32 num_words = min(words - i, TRACE_MAX_LENGTH);

   offset += i * sizeof(u32);

   trace_host1x_cdma_push_gather(dev_name(dev), bo,
            num_words, offset,
            mem);
  }

  host1x_bo_munmap(bo, mem);
 }
}
