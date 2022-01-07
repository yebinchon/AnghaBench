
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sync_file {struct dma_fence* fence; scalar_t__* user_name; } ;
struct dma_fence {TYPE_1__* ops; int seqno; int context; } ;
struct TYPE_2__ {char* (* get_driver_name ) (struct dma_fence*) ;char* (* get_timeline_name ) (struct dma_fence*) ;} ;


 int snprintf (char*,int,char*,char*,char*,int ,int ) ;
 int strlcpy (char*,scalar_t__*,int) ;
 char* stub1 (struct dma_fence*) ;
 char* stub2 (struct dma_fence*) ;
 char* stub3 (struct dma_fence*) ;
 char* stub4 (struct dma_fence*) ;

char *sync_file_get_name(struct sync_file *sync_file, char *buf, int len)
{
 if (sync_file->user_name[0]) {
  strlcpy(buf, sync_file->user_name, len);
 } else {
  struct dma_fence *fence = sync_file->fence;

  snprintf(buf, len, "%s-%s%llu-%lld",
    fence->ops->get_driver_name(fence),
    fence->ops->get_timeline_name(fence),
    fence->context,
    fence->seqno);
 }

 return buf;
}
