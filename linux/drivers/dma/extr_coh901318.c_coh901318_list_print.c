
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_lli {struct coh901318_lli* virt_link_addr; int link_addr; int dst_addr; int src_addr; int control; } ;
struct coh901318_chan {int dummy; } ;


 int COHC_2_DEV (struct coh901318_chan*) ;
 int dev_vdbg (int ,char*,int,struct coh901318_lli*,int ,int *,int *,int *,struct coh901318_lli*) ;

__attribute__((used)) static void coh901318_list_print(struct coh901318_chan *cohc,
     struct coh901318_lli *lli)
{
 struct coh901318_lli *l = lli;
 int i = 0;

 while (l) {
  dev_vdbg(COHC_2_DEV(cohc), "i %d, lli %p, ctrl 0x%x, src %pad"
    ", dst %pad, link %pad virt_link_addr 0x%p\n",
    i, l, l->control, &l->src_addr, &l->dst_addr,
    &l->link_addr, l->virt_link_addr);
  i++;
  l = l->virt_link_addr;
 }
}
