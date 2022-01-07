
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ihex_binrec {int dummy; } ;
struct firmware {scalar_t__ data; } ;


 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;

__attribute__((used)) static unsigned int ims_pcu_count_fw_records(const struct firmware *fw)
{
 const struct ihex_binrec *rec = (const struct ihex_binrec *)fw->data;
 unsigned int count = 0;

 while (rec) {
  count++;
  rec = ihex_next_binrec(rec);
 }

 return count;
}
