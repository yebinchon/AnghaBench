
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static u32 vc4_get_fifo_full_level(u32 format)
{
 static const u32 fifo_len_bytes = 64;
 static const u32 hvs_latency_pix = 6;

 switch (format) {
 case 130:
 case 131:
  return fifo_len_bytes - 2 * hvs_latency_pix;
 case 129:
  return fifo_len_bytes - 14;
 case 132:
 case 128:
 default:
  return fifo_len_bytes - 3 * hvs_latency_pix;
 }
}
