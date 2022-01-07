
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {scalar_t__ length; int lkey; int addr; } ;
struct bnxt_qplib_sge {scalar_t__ size; int lkey; int addr; } ;



__attribute__((used)) static int bnxt_re_build_sgl(struct ib_sge *ib_sg_list,
        struct bnxt_qplib_sge *sg_list, int num)
{
 int i, total = 0;

 for (i = 0; i < num; i++) {
  sg_list[i].addr = ib_sg_list[i].addr;
  sg_list[i].lkey = ib_sg_list[i].lkey;
  sg_list[i].size = ib_sg_list[i].length;
  total += sg_list[i].size;
 }
 return total;
}
