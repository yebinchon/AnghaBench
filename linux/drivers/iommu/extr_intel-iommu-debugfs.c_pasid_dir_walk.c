
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct seq_file {int dummy; } ;
struct pasid_entry {int dummy; } ;
struct pasid_dir_entry {int dummy; } ;


 struct pasid_entry* get_pasid_table_from_pde (struct pasid_dir_entry*) ;
 int pasid_tbl_walk (struct seq_file*,struct pasid_entry*,scalar_t__) ;
 struct pasid_dir_entry* phys_to_virt (int ) ;

__attribute__((used)) static void pasid_dir_walk(struct seq_file *m, u64 pasid_dir_ptr,
      u16 pasid_dir_size)
{
 struct pasid_dir_entry *dir_entry = phys_to_virt(pasid_dir_ptr);
 struct pasid_entry *pasid_tbl;
 u16 dir_idx;

 for (dir_idx = 0; dir_idx < pasid_dir_size; dir_idx++) {
  pasid_tbl = get_pasid_table_from_pde(dir_entry);
  if (pasid_tbl)
   pasid_tbl_walk(m, pasid_tbl, dir_idx);

  dir_entry++;
 }
}
