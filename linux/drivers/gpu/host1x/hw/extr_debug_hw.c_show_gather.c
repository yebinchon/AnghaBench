
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct output {int dummy; } ;
struct host1x_cdma {int dummy; } ;
typedef int phys_addr_t ;


 int HOST1X_DEBUG_MAX_PAGE_OFFSET ;
 int INVALID_PAYLOAD ;
 int host1x_debug_cont (struct output*,char*,int,char*) ;
 int host1x_debug_output (struct output*,char*,...) ;
 unsigned int show_channel_command (struct output*,int,int*) ;

__attribute__((used)) static void show_gather(struct output *o, phys_addr_t phys_addr,
   unsigned int words, struct host1x_cdma *cdma,
   phys_addr_t pin_addr, u32 *map_addr)
{

 u32 offset = phys_addr - pin_addr;
 unsigned int data_count = 0, i;
 u32 payload = INVALID_PAYLOAD;






 if (offset > HOST1X_DEBUG_MAX_PAGE_OFFSET) {
  host1x_debug_output(o, "[address mismatch]\n");
  return;
 }

 for (i = 0; i < words; i++) {
  u32 addr = phys_addr + i * 4;
  u32 val = *(map_addr + offset / 4 + i);

  if (!data_count) {
   host1x_debug_output(o, "%08x: %08x: ", addr, val);
   data_count = show_channel_command(o, val, &payload);
  } else {
   host1x_debug_cont(o, "%08x%s", val,
         data_count > 1 ? ", " : "])\n");
   data_count--;
  }
 }
}
