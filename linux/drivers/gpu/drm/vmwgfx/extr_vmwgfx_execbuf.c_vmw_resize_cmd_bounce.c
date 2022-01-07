
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_sw_context {int cmd_bounce_size; int * cmd_bounce; } ;


 int ENOMEM ;
 int PAGE_ALIGN (int) ;
 int VMWGFX_CMD_BOUNCE_INIT_SIZE ;
 int VMW_DEBUG_USER (char*) ;
 scalar_t__ likely (int) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

__attribute__((used)) static int vmw_resize_cmd_bounce(struct vmw_sw_context *sw_context,
     uint32_t size)
{
 if (likely(sw_context->cmd_bounce_size >= size))
  return 0;

 if (sw_context->cmd_bounce_size == 0)
  sw_context->cmd_bounce_size = VMWGFX_CMD_BOUNCE_INIT_SIZE;

 while (sw_context->cmd_bounce_size < size) {
  sw_context->cmd_bounce_size =
   PAGE_ALIGN(sw_context->cmd_bounce_size +
       (sw_context->cmd_bounce_size >> 1));
 }

 vfree(sw_context->cmd_bounce);
 sw_context->cmd_bounce = vmalloc(sw_context->cmd_bounce_size);

 if (sw_context->cmd_bounce == ((void*)0)) {
  VMW_DEBUG_USER("Failed to allocate command bounce buffer.\n");
  sw_context->cmd_bounce_size = 0;
  return -ENOMEM;
 }

 return 0;
}
