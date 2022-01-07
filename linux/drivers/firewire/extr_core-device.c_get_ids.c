
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_csr_iterator {int dummy; } ;






 int fw_csr_iterator_init (struct fw_csr_iterator*,int const*) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;

__attribute__((used)) static void get_ids(const u32 *directory, int *id)
{
 struct fw_csr_iterator ci;
 int key, value;

 fw_csr_iterator_init(&ci, directory);
 while (fw_csr_iterator_next(&ci, &key, &value)) {
  switch (key) {
  case 129: id[0] = value; break;
  case 131: id[1] = value; break;
  case 130: id[2] = value; break;
  case 128: id[3] = value; break;
  }
 }
}
