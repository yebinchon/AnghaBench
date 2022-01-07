
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct sc2vlnt {int* vlnt; } ;
struct hfi1_devdata {int dummy; } ;


 int DCC_CFG_SC_VL_TABLE_15_0 ;
 int DCC_CFG_SC_VL_TABLE_31_16 ;
 scalar_t__ read_csr (struct hfi1_devdata*,int ) ;

__attribute__((used)) static int get_sc2vlnt(struct hfi1_devdata *dd, struct sc2vlnt *dp)
{
 u64 reg;
 int i;


 reg = read_csr(dd, DCC_CFG_SC_VL_TABLE_15_0);
 for (i = 0; i < sizeof(u64); i++) {
  u8 byte = *(((u8 *)&reg) + i);

  dp->vlnt[2 * i] = byte & 0xf;
  dp->vlnt[(2 * i) + 1] = (byte & 0xf0) >> 4;
 }

 reg = read_csr(dd, DCC_CFG_SC_VL_TABLE_31_16);
 for (i = 0; i < sizeof(u64); i++) {
  u8 byte = *(((u8 *)&reg) + i);

  dp->vlnt[16 + (2 * i)] = byte & 0xf;
  dp->vlnt[16 + (2 * i) + 1] = (byte & 0xf0) >> 4;
 }
 return sizeof(struct sc2vlnt);
}
