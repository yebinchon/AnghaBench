
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sahara_dev {int device; TYPE_1__** hw_link; int * hw_phys_link; } ;
struct TYPE_2__ {int next; int p; int len; } ;


 int DEBUG ;
 int SAHARA_MAX_HW_LINK ;
 int __is_defined (int ) ;
 int dev_dbg (int ,char*,...) ;

__attribute__((used)) static void sahara_dump_links(struct sahara_dev *dev)
{
 int i;

 if (!__is_defined(DEBUG))
  return;

 for (i = 0; i < SAHARA_MAX_HW_LINK; i++) {
  dev_dbg(dev->device, "Link (%d) (%pad):\n",
   i, &dev->hw_phys_link[i]);
  dev_dbg(dev->device, "\tlen = %u\n", dev->hw_link[i]->len);
  dev_dbg(dev->device, "\tp = 0x%08x\n", dev->hw_link[i]->p);
  dev_dbg(dev->device, "\tnext = 0x%08x\n",
   dev->hw_link[i]->next);
 }
 dev_dbg(dev->device, "\n");
}
