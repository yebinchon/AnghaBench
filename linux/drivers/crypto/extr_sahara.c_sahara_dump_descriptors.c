
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sahara_dev {int device; TYPE_1__** hw_desc; int * hw_phys_desc; } ;
struct TYPE_2__ {int next; int p2; int len2; int p1; int len1; int hdr; } ;


 int DEBUG ;
 int SAHARA_MAX_HW_DESC ;
 int __is_defined (int ) ;
 int dev_dbg (int ,char*,...) ;

__attribute__((used)) static void sahara_dump_descriptors(struct sahara_dev *dev)
{
 int i;

 if (!__is_defined(DEBUG))
  return;

 for (i = 0; i < SAHARA_MAX_HW_DESC; i++) {
  dev_dbg(dev->device, "Descriptor (%d) (%pad):\n",
   i, &dev->hw_phys_desc[i]);
  dev_dbg(dev->device, "\thdr = 0x%08x\n", dev->hw_desc[i]->hdr);
  dev_dbg(dev->device, "\tlen1 = %u\n", dev->hw_desc[i]->len1);
  dev_dbg(dev->device, "\tp1 = 0x%08x\n", dev->hw_desc[i]->p1);
  dev_dbg(dev->device, "\tlen2 = %u\n", dev->hw_desc[i]->len2);
  dev_dbg(dev->device, "\tp2 = 0x%08x\n", dev->hw_desc[i]->p2);
  dev_dbg(dev->device, "\tnext = 0x%08x\n",
   dev->hw_desc[i]->next);
 }
 dev_dbg(dev->device, "\n");
}
