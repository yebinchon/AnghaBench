
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int sec_per_write; } ;



void pblk_set_sec_per_write(struct pblk *pblk, int sec_per_write)
{
 pblk->sec_per_write = sec_per_write;
}
