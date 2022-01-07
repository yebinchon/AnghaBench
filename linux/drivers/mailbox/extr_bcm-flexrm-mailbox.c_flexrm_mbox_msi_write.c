
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_msg {int data; int address_hi; int address_lo; } ;
struct TYPE_2__ {size_t msi_index; } ;
struct msi_desc {TYPE_1__ platform; } ;
struct flexrm_ring {scalar_t__ regs; } ;
struct flexrm_mbox {struct flexrm_ring* rings; } ;
struct device {int dummy; } ;


 scalar_t__ RING_MSI_ADDR_LS ;
 scalar_t__ RING_MSI_ADDR_MS ;
 scalar_t__ RING_MSI_DATA_VALUE ;
 struct flexrm_mbox* dev_get_drvdata (struct device*) ;
 struct device* msi_desc_to_dev (struct msi_desc*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void flexrm_mbox_msi_write(struct msi_desc *desc, struct msi_msg *msg)
{
 struct device *dev = msi_desc_to_dev(desc);
 struct flexrm_mbox *mbox = dev_get_drvdata(dev);
 struct flexrm_ring *ring = &mbox->rings[desc->platform.msi_index];


 writel_relaxed(msg->address_lo, ring->regs + RING_MSI_ADDR_LS);
 writel_relaxed(msg->address_hi, ring->regs + RING_MSI_ADDR_MS);
 writel_relaxed(msg->data, ring->regs + RING_MSI_DATA_VALUE);
}
