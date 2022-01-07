
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GENMASK_ULL (int,int) ;

__attribute__((used)) static void its_mask_encode(u64 *raw_cmd, u64 val, int h, int l)
{
 u64 mask = GENMASK_ULL(h, l);
 *raw_cmd &= ~mask;
 *raw_cmd |= (val << l) & mask;
}
