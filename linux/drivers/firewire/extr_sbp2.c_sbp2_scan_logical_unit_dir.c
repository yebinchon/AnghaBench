
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sbp2_target {int dummy; } ;
struct fw_csr_iterator {int dummy; } ;


 int ENOMEM ;
 int SBP2_CSR_LOGICAL_UNIT_NUMBER ;
 int fw_csr_iterator_init (struct fw_csr_iterator*,int const*) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 scalar_t__ sbp2_add_logical_unit (struct sbp2_target*,int) ;

__attribute__((used)) static int sbp2_scan_logical_unit_dir(struct sbp2_target *tgt,
          const u32 *directory)
{
 struct fw_csr_iterator ci;
 int key, value;

 fw_csr_iterator_init(&ci, directory);
 while (fw_csr_iterator_next(&ci, &key, &value))
  if (key == SBP2_CSR_LOGICAL_UNIT_NUMBER &&
      sbp2_add_logical_unit(tgt, value) < 0)
   return -ENOMEM;
 return 0;
}
