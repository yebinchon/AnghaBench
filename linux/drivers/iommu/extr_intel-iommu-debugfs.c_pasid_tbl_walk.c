
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct tbl_walk {scalar_t__ pasid; struct pasid_entry* pasid_tbl_entry; } ;
struct seq_file {struct tbl_walk* private; } ;
struct pasid_entry {int dummy; } ;


 int PASID_PDE_SHIFT ;
 scalar_t__ PASID_TBL_ENTRIES ;
 scalar_t__ pasid_pte_is_present (struct pasid_entry*) ;
 int print_tbl_walk (struct seq_file*) ;

__attribute__((used)) static void pasid_tbl_walk(struct seq_file *m, struct pasid_entry *tbl_entry,
      u16 dir_idx)
{
 struct tbl_walk *tbl_wlk = m->private;
 u8 tbl_idx;

 for (tbl_idx = 0; tbl_idx < PASID_TBL_ENTRIES; tbl_idx++) {
  if (pasid_pte_is_present(tbl_entry)) {
   tbl_wlk->pasid_tbl_entry = tbl_entry;
   tbl_wlk->pasid = (dir_idx << PASID_PDE_SHIFT) + tbl_idx;
   print_tbl_walk(m);
  }

  tbl_entry++;
 }
}
