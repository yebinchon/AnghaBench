
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u32 ;


 int round_up (unsigned int const,unsigned int) ;

__attribute__((used)) static void ipu_calculate_bursts(u32 width, u32 cpp, u32 stride,
     u8 *burstsize, u8 *num_bursts)
{
 const unsigned int width_bytes = width * cpp;
 unsigned int npb, bursts;


 for (npb = 64 / cpp; npb > 0; --npb) {
  if (round_up(width_bytes, npb * cpp) <= stride)
   break;
 }
 *burstsize = npb;


 for (bursts = 8; bursts > 1; bursts /= 2) {
  if (round_up(width_bytes, npb * cpp * bursts) <= stride)
   break;
 }
 *num_bursts = bursts;
}
