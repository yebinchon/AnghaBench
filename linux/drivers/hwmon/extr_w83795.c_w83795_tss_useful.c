
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int has_temp; int has_dts; } ;


 int TSS_MAP_RESERVED ;
 int** tss_map ;

__attribute__((used)) static int w83795_tss_useful(const struct w83795_data *data, int tsrc)
{
 int useful = 0, i;

 for (i = 0; i < 4; i++) {
  if (tss_map[i][tsrc] == TSS_MAP_RESERVED)
   continue;
  if (tss_map[i][tsrc] < 6)
   useful += (data->has_temp >> tss_map[i][tsrc]) & 1;
  else
   useful += (data->has_dts >> (tss_map[i][tsrc] - 6)) & 1;
 }

 return useful;
}
