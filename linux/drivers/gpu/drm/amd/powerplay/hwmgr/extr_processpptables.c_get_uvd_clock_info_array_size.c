
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct pp_hwmgr {int dummy; } ;
struct TYPE_2__ {int ucNumEntries; } ;
typedef TYPE_1__ UVDClockInfoArray ;
typedef int UVDClockInfo ;
typedef int UCHAR ;
typedef int ATOM_PPLIB_POWERPLAYTABLE ;


 scalar_t__ get_uvd_clock_info_array_offset (struct pp_hwmgr*,int const*) ;

__attribute__((used)) static uint16_t get_uvd_clock_info_array_size(struct pp_hwmgr *hwmgr,
   const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
 uint16_t table_offset = get_uvd_clock_info_array_offset(hwmgr,
          powerplay_table);
 uint16_t table_size = 0;

 if (table_offset > 0) {
  const UVDClockInfoArray *p = (const UVDClockInfoArray *)
     (((unsigned long) powerplay_table)
     + table_offset);
  table_size = sizeof(UCHAR) +
        p->ucNumEntries * sizeof(UVDClockInfo);
 }

 return table_size;
}
