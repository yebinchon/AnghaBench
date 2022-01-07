
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int fence; } ;
struct seq_file {int dummy; } ;
struct dma_fence_array {int num_fences; int * fences; } ;
typedef int buf ;


 int dma_fence_get_status (int ) ;
 scalar_t__ dma_fence_is_array (int ) ;
 int seq_printf (struct seq_file*,char*,struct sync_file*,int ,int ) ;
 int sync_file_get_name (struct sync_file*,char*,int) ;
 int sync_print_fence (struct seq_file*,int ,int) ;
 int sync_status_str (int ) ;
 struct dma_fence_array* to_dma_fence_array (int ) ;

__attribute__((used)) static void sync_print_sync_file(struct seq_file *s,
      struct sync_file *sync_file)
{
 char buf[128];
 int i;

 seq_printf(s, "[%p] %s: %s\n", sync_file,
     sync_file_get_name(sync_file, buf, sizeof(buf)),
     sync_status_str(dma_fence_get_status(sync_file->fence)));

 if (dma_fence_is_array(sync_file->fence)) {
  struct dma_fence_array *array = to_dma_fence_array(sync_file->fence);

  for (i = 0; i < array->num_fences; ++i)
   sync_print_fence(s, array->fences[i], 1);
 } else {
  sync_print_fence(s, sync_file->fence, 1);
 }
}
