
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct amd64_pvt {TYPE_1__* csels; } ;
struct TYPE_2__ {int* csmasks_sec; int* csmasks; } ;


 unsigned int CS_EVEN ;
 unsigned int CS_ODD ;
 unsigned int CS_ODD_SECONDARY ;
 int GENMASK_ULL (int,int) ;
 int edac_dbg (int,char*,int,...) ;
 int fls (int) ;
 int hweight_long (int) ;

__attribute__((used)) static int f17_addr_mask_to_cs_size(struct amd64_pvt *pvt, u8 umc,
        unsigned int cs_mode, int csrow_nr)
{
 u32 addr_mask_orig, addr_mask_deinterleaved;
 u32 msb, weight, num_zero_bits;
 int dimm, size = 0;


 if (!cs_mode)
  return size;


 if (!(cs_mode & CS_EVEN) && !(csrow_nr & 1))
  return size;


 if (!(cs_mode & CS_ODD) && (csrow_nr & 1))
  return size;






 dimm = csrow_nr >> 1;


 if ((csrow_nr & 1) && (cs_mode & CS_ODD_SECONDARY))
  addr_mask_orig = pvt->csels[umc].csmasks_sec[dimm];
 else
  addr_mask_orig = pvt->csels[umc].csmasks[dimm];
 msb = fls(addr_mask_orig) - 1;
 weight = hweight_long(addr_mask_orig);
 num_zero_bits = msb - weight;


 addr_mask_deinterleaved = GENMASK_ULL(msb - num_zero_bits, 1);

 edac_dbg(1, "CS%d DIMM%d AddrMasks:\n", csrow_nr, dimm);
 edac_dbg(1, "  Original AddrMask: 0x%x\n", addr_mask_orig);
 edac_dbg(1, "  Deinterleaved AddrMask: 0x%x\n", addr_mask_deinterleaved);


 size = (addr_mask_deinterleaved >> 2) + 1;


 return size >> 10;
}
