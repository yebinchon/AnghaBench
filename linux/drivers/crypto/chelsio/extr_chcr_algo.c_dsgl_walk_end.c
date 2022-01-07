
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsgl_walk {int nents; struct cpl_rx_phys_dsgl* dsgl; } ;
struct TYPE_2__ {int channel; scalar_t__ hash_val; int qid; int opcode; } ;
struct cpl_rx_phys_dsgl {TYPE_1__ rss_hdr_int; void* pcirlxorder_to_noofsgentr; void* op_to_tid; } ;


 int CPL_RX_PHYS_ADDR ;
 int CPL_RX_PHYS_DSGL ;
 int CPL_RX_PHYS_DSGL_DCAID_V (int ) ;
 int CPL_RX_PHYS_DSGL_ISRDMA_V (int ) ;
 int CPL_RX_PHYS_DSGL_NOOFSGENTR_V (int ) ;
 int CPL_RX_PHYS_DSGL_OPCODE_V (int ) ;
 int CPL_RX_PHYS_DSGL_PCINOSNOOP_V (int ) ;
 int CPL_RX_PHYS_DSGL_PCIRLXORDER_V (int ) ;
 int CPL_RX_PHYS_DSGL_PCITPHNTENB_V (int ) ;
 int CPL_RX_PHYS_DSGL_PCITPHNT_V (int ) ;
 void* htonl (int) ;
 int htons (unsigned short) ;

__attribute__((used)) static inline void dsgl_walk_end(struct dsgl_walk *walk, unsigned short qid,
     int pci_chan_id)
{
 struct cpl_rx_phys_dsgl *phys_cpl;

 phys_cpl = walk->dsgl;

 phys_cpl->op_to_tid = htonl(CPL_RX_PHYS_DSGL_OPCODE_V(CPL_RX_PHYS_DSGL)
        | CPL_RX_PHYS_DSGL_ISRDMA_V(0));
 phys_cpl->pcirlxorder_to_noofsgentr =
  htonl(CPL_RX_PHYS_DSGL_PCIRLXORDER_V(0) |
        CPL_RX_PHYS_DSGL_PCINOSNOOP_V(0) |
        CPL_RX_PHYS_DSGL_PCITPHNTENB_V(0) |
        CPL_RX_PHYS_DSGL_PCITPHNT_V(0) |
        CPL_RX_PHYS_DSGL_DCAID_V(0) |
        CPL_RX_PHYS_DSGL_NOOFSGENTR_V(walk->nents));
 phys_cpl->rss_hdr_int.opcode = CPL_RX_PHYS_ADDR;
 phys_cpl->rss_hdr_int.qid = htons(qid);
 phys_cpl->rss_hdr_int.hash_val = 0;
 phys_cpl->rss_hdr_int.channel = pci_chan_id;
}
