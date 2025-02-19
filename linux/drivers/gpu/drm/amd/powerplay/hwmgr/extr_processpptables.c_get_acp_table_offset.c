
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct pp_hwmgr {int dummy; } ;
struct TYPE_7__ {scalar_t__ usSize; scalar_t__ usACPTableOffset; } ;
struct TYPE_6__ {scalar_t__ usTableSize; } ;
struct TYPE_5__ {scalar_t__ usExtendendedHeaderOffset; } ;
typedef TYPE_1__ ATOM_PPLIB_POWERPLAYTABLE3 ;
typedef TYPE_2__ ATOM_PPLIB_POWERPLAYTABLE ;
typedef TYPE_3__ ATOM_PPLIB_EXTENDEDHEADER ;


 scalar_t__ SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V6 ;
 scalar_t__ le16_to_cpu (scalar_t__) ;

__attribute__((used)) static uint16_t get_acp_table_offset(struct pp_hwmgr *hwmgr,
    const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
 uint16_t acp_table_offset = 0;

 if (le16_to_cpu(powerplay_table->usTableSize) >=
     sizeof(ATOM_PPLIB_POWERPLAYTABLE3)) {
  const ATOM_PPLIB_POWERPLAYTABLE3 *powerplay_table3 =
   (const ATOM_PPLIB_POWERPLAYTABLE3 *)powerplay_table;
  if (powerplay_table3->usExtendendedHeaderOffset > 0) {
   const ATOM_PPLIB_EXTENDEDHEADER *pExtendedHeader =
    (const ATOM_PPLIB_EXTENDEDHEADER *)
    (((unsigned long)powerplay_table3) +
    le16_to_cpu(powerplay_table3->usExtendendedHeaderOffset));
   if (le16_to_cpu(pExtendedHeader->usSize) >=
       SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V6)
    acp_table_offset = le16_to_cpu(pExtendedHeader->usACPTableOffset);
  }
 }

 return acp_table_offset;
}
