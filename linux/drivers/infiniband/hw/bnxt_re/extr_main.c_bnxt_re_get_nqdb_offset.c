
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct bnxt_re_dev {TYPE_1__* msix_entries; int chip_ctx; } ;
struct TYPE_2__ {int db_offset; } ;


 scalar_t__ bnxt_qplib_is_chip_gen_p5 (int *) ;

__attribute__((used)) static u32 bnxt_re_get_nqdb_offset(struct bnxt_re_dev *rdev, u16 indx)
{
 return bnxt_qplib_is_chip_gen_p5(&rdev->chip_ctx) ?
    0x10000 : rdev->msix_entries[indx].db_offset;
}
