
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mem_ctl_info {TYPE_3__** dimms; int n_layers; TYPE_2__* layers; struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {int maxch; int maxdimmperch; TYPE_1__** dimm_info; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int mtype; int dtype; } ;
struct TYPE_6__ {int edac_mode; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int megabytes; } ;


 int DEV_X4 ;
 int DEV_X8 ;
 struct dimm_info* EDAC_DIMM_PTR (TYPE_2__*,TYPE_3__**,int ,int,int,int) ;
 int EDAC_S4ECD4ED ;
 int EDAC_S8ECD8ED ;
 int EDAC_SECDED ;
 int MEM_FB_DDR2 ;
 int MTR_DIMMS_PRESENT (int) ;
 int MTR_DRAM_WIDTH (int) ;
 int determine_mtr (struct i5400_pvt*,int,int) ;
 int edac_dbg (int,char*,int,int,int,int,int) ;

__attribute__((used)) static int i5400_init_dimms(struct mem_ctl_info *mci)
{
 struct i5400_pvt *pvt;
 struct dimm_info *dimm;
 int ndimms, channel_count;
 int max_dimms;
 int mtr;
 int size_mb;
 int channel, slot;

 pvt = mci->pvt_info;

 channel_count = pvt->maxch;
 max_dimms = pvt->maxdimmperch;

 ndimms = 0;





 for (channel = 0; channel < mci->layers[0].size * mci->layers[1].size;
      channel++) {
  for (slot = 0; slot < mci->layers[2].size; slot++) {
   mtr = determine_mtr(pvt, slot, channel);


   if (!MTR_DIMMS_PRESENT(mtr))
    continue;

   dimm = EDAC_DIMM_PTR(mci->layers, mci->dimms, mci->n_layers,
           channel / 2, channel % 2, slot);

   size_mb = pvt->dimm_info[slot][channel].megabytes;

   edac_dbg(2, "dimm (branch %d channel %d slot %d): %d.%03d GB\n",
     channel / 2, channel % 2, slot,
     size_mb / 1000, size_mb % 1000);

   dimm->nr_pages = size_mb << 8;
   dimm->grain = 8;
   dimm->dtype = MTR_DRAM_WIDTH(mtr) == 8 ?
          DEV_X8 : DEV_X4;
   dimm->mtype = MEM_FB_DDR2;




   dimm->edac_mode = MTR_DRAM_WIDTH(mtr) == 8 ?
       EDAC_S8ECD8ED : EDAC_S4ECD4ED;
   ndimms++;
  }
 }





 if (ndimms == 1)
  mci->dimms[0]->edac_mode = EDAC_SECDED;

 return (ndimms == 0);
}
