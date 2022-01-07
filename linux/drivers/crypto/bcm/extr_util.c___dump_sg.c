
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;


 int DUMP_PREFIX_NONE ;
 int KERN_ALERT ;
 scalar_t__ debug_logging_sleep ;
 int msleep (scalar_t__) ;
 scalar_t__ packet_debug_logging ;
 int print_hex_dump (int ,char*,int ,int,int,int *,unsigned int,int) ;
 int sg_copy_part_to_buf (struct scatterlist*,int *,unsigned int,unsigned int) ;

void __dump_sg(struct scatterlist *sg, unsigned int skip, unsigned int len)
{
 u8 dbuf[16];
 unsigned int idx = skip;
 unsigned int num_out = 0;
 unsigned int count;

 if (packet_debug_logging) {
  while (num_out < len) {
   count = (len - num_out > 16) ? 16 : len - num_out;
   sg_copy_part_to_buf(sg, dbuf, count, idx);
   num_out += count;
   print_hex_dump(KERN_ALERT, "  sg: ", DUMP_PREFIX_NONE,
           4, 1, dbuf, count, 0);
   idx += 16;
  }
 }
 if (debug_logging_sleep)
  msleep(debug_logging_sleep);
}
