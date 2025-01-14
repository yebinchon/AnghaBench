
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int tot_dimms; int n_layers; int dimms; int layers; struct i5100_priv* pvt_info; } ;
struct i5100_priv {TYPE_1__** mtr; } ;
struct dimm_info {unsigned long nr_pages; int grain; int label; int edac_mode; int mtype; int dtype; } ;
struct TYPE_2__ {int width; } ;


 int DEV_X4 ;
 int DEV_X8 ;
 struct dimm_info* EDAC_DIMM_PTR (int ,int ,int ,unsigned int const,unsigned int const,int ) ;
 int EDAC_SECDED ;
 int MEM_RDDR2 ;
 scalar_t__ PAGES_TO_MiB (unsigned long const) ;
 int edac_dbg (int,char*,unsigned int const,unsigned int const,long) ;
 unsigned int i5100_csrow_to_chan (struct mem_ctl_info*,int) ;
 unsigned int i5100_csrow_to_rank (struct mem_ctl_info*,int) ;
 unsigned long i5100_npages (struct mem_ctl_info*,int) ;
 int i5100_rank_to_slot (struct mem_ctl_info*,unsigned int const,unsigned int const) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void i5100_init_csrows(struct mem_ctl_info *mci)
{
 int i;
 struct i5100_priv *priv = mci->pvt_info;

 for (i = 0; i < mci->tot_dimms; i++) {
  struct dimm_info *dimm;
  const unsigned long npages = i5100_npages(mci, i);
  const unsigned int chan = i5100_csrow_to_chan(mci, i);
  const unsigned int rank = i5100_csrow_to_rank(mci, i);

  if (!npages)
   continue;

  dimm = EDAC_DIMM_PTR(mci->layers, mci->dimms, mci->n_layers,
          chan, rank, 0);

  dimm->nr_pages = npages;
  dimm->grain = 32;
  dimm->dtype = (priv->mtr[chan][rank].width == 4) ?
    DEV_X4 : DEV_X8;
  dimm->mtype = MEM_RDDR2;
  dimm->edac_mode = EDAC_SECDED;
  snprintf(dimm->label, sizeof(dimm->label), "DIMM%u",
    i5100_rank_to_slot(mci, chan, rank));

  edac_dbg(2, "dimm channel %d, rank %d, size %ld\n",
    chan, rank, (long)PAGES_TO_MiB(npages));
 }
}
