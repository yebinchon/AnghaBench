
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_sge {int lkey; int length; int laddr; } ;
struct ib_sge {int lkey; int length; int addr; } ;



__attribute__((used)) static inline void siw_copy_sgl(struct ib_sge *sge, struct siw_sge *siw_sge,
    int num_sge)
{
 while (num_sge--) {
  siw_sge->laddr = sge->addr;
  siw_sge->length = sge->length;
  siw_sge->lkey = sge->lkey;

  siw_sge++;
  sge++;
 }
}
