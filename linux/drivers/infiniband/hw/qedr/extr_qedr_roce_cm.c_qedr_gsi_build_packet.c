
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct qedr_qp {int dummy; } ;
struct qedr_dev {struct pci_dev* pdev; } ;
struct TYPE_6__ {int len; int vaddr; int baddr; } ;
struct qed_roce_ll2_packet {int roce_mode; int n_seg; TYPE_3__* payload; TYPE_2__ header; int tx_dest; } ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {int dmac_h; int smac_h; } ;
struct ib_ud_header {TYPE_1__ eth; } ;
struct ib_send_wr {int num_sge; TYPE_4__* sg_list; } ;
struct TYPE_8__ {int length; int addr; } ;
struct TYPE_7__ {int len; int baddr; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int QEDR_MAX_UD_HEADER_SIZE ;
 int QED_LL2_TX_DEST_LB ;
 int QED_LL2_TX_DEST_NW ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ib_ud_header_pack (struct ib_ud_header*,int **) ;
 int kfree (struct qed_roce_ll2_packet*) ;
 struct qed_roce_ll2_packet* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 int qedr_gsi_build_header (struct qedr_dev*,struct qedr_qp*,struct ib_send_wr const*,struct ib_ud_header*,int*) ;

__attribute__((used)) static inline int qedr_gsi_build_packet(struct qedr_dev *dev,
     struct qedr_qp *qp,
     const struct ib_send_wr *swr,
     struct qed_roce_ll2_packet **p_packet)
{
 u8 ud_header_buffer[QEDR_MAX_UD_HEADER_SIZE];
 struct qed_roce_ll2_packet *packet;
 struct pci_dev *pdev = dev->pdev;
 int roce_mode, header_size;
 struct ib_ud_header udh;
 int i, rc;

 *p_packet = ((void*)0);

 rc = qedr_gsi_build_header(dev, qp, swr, &udh, &roce_mode);
 if (rc)
  return rc;

 header_size = ib_ud_header_pack(&udh, &ud_header_buffer);

 packet = kzalloc(sizeof(*packet), GFP_ATOMIC);
 if (!packet)
  return -ENOMEM;

 packet->header.vaddr = dma_alloc_coherent(&pdev->dev, header_size,
        &packet->header.baddr,
        GFP_ATOMIC);
 if (!packet->header.vaddr) {
  kfree(packet);
  return -ENOMEM;
 }

 if (ether_addr_equal(udh.eth.smac_h, udh.eth.dmac_h))
  packet->tx_dest = QED_LL2_TX_DEST_LB;
 else
  packet->tx_dest = QED_LL2_TX_DEST_NW;

 packet->roce_mode = roce_mode;
 memcpy(packet->header.vaddr, ud_header_buffer, header_size);
 packet->header.len = header_size;
 packet->n_seg = swr->num_sge;
 for (i = 0; i < packet->n_seg; i++) {
  packet->payload[i].baddr = swr->sg_list[i].addr;
  packet->payload[i].len = swr->sg_list[i].length;
 }

 *p_packet = packet;

 return 0;
}
