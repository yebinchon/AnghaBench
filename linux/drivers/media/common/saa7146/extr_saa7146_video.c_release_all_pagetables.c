
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {int pci; } ;
struct saa7146_buf {int * pt; } ;


 int saa7146_pgtable_free (int ,int *) ;

__attribute__((used)) static void release_all_pagetables(struct saa7146_dev *dev, struct saa7146_buf *buf)
{
 saa7146_pgtable_free(dev->pci, &buf->pt[0]);
 saa7146_pgtable_free(dev->pci, &buf->pt[1]);
 saa7146_pgtable_free(dev->pci, &buf->pt[2]);
}
