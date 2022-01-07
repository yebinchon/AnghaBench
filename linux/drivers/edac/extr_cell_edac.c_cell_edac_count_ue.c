
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {int pdev; struct csrow_info** csrows; struct cell_edac_priv* pvt_info; } ;
struct csrow_info {scalar_t__ first_page; } ;
struct cell_edac_priv {int chanmask; int node; } ;


 int HW_EVENT_ERR_UNCORRECTED ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,scalar_t__,unsigned long,int ,int ,int,int,char*,char*) ;

__attribute__((used)) static void cell_edac_count_ue(struct mem_ctl_info *mci, int chan, u64 ar)
{
 struct cell_edac_priv *priv = mci->pvt_info;
 struct csrow_info *csrow = mci->csrows[0];
 unsigned long address, pfn, offset;

 dev_dbg(mci->pdev, "ECC UE err on node %d, channel %d, ar = 0x%016llx\n",
  priv->node, chan, ar);


 address = (ar & 0xffffffffe0000000ul) >> 29;
 if (priv->chanmask == 0x3)
  address = (address << 1) | chan;
 pfn = address >> PAGE_SHIFT;
 offset = address & ~PAGE_MASK;


 edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
        csrow->first_page + pfn, offset, 0,
        0, chan, -1, "", "");
}
