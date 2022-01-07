
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;


 int nvbios_perf_table (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ;

u32
nvbios_perf_entry(struct nvkm_bios *bios, int idx,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 u8 snr, ssz;
 u32 perf = nvbios_perf_table(bios, ver, hdr, cnt, len, &snr, &ssz);
 if (perf && idx < *cnt) {
  perf = perf + *hdr + (idx * (*len + (snr * ssz)));
  *hdr = *len;
  *cnt = snr;
  *len = ssz;
  return perf;
 }
 return 0;
}
