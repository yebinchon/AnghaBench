
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct dpu_qos_lut_tbl {int nentry; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ fl; int lut; } ;



__attribute__((used)) static u64 _dpu_plane_get_qos_lut(const struct dpu_qos_lut_tbl *tbl,
  u32 total_fl)
{
 int i;

 if (!tbl || !tbl->nentry || !tbl->entries)
  return 0;

 for (i = 0; i < tbl->nentry; i++)
  if (total_fl <= tbl->entries[i].fl)
   return tbl->entries[i].lut;


 if (!tbl->entries[i-1].fl)
  return tbl->entries[i-1].lut;

 return 0;
}
