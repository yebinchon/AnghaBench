
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int haswell_chan_hash(int idx, u64 addr)
{
 int i;





 for (i = 12; i < 28; i += 2)
  idx ^= (addr >> i) & 3;

 return idx;
}
