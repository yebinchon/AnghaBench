
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {int lkey; int length; int addr; } ;
struct i40iw_sge {int stag; int len; int tag_off; } ;


 unsigned int I40IW_MAX_WQ_FRAGMENT_COUNT ;

__attribute__((used)) static void i40iw_copy_sg_list(struct i40iw_sge *sg_list, struct ib_sge *sgl, int num_sges)
{
 unsigned int i;

 for (i = 0; (i < num_sges) && (i < I40IW_MAX_WQ_FRAGMENT_COUNT); i++) {
  sg_list[i].tag_off = sgl[i].addr;
  sg_list[i].len = sgl[i].length;
  sg_list[i].stag = sgl[i].lkey;
 }
}
