
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rank_info {int chan_idx; struct dimm_info* dimm; struct csrow_info* csrow; } ;
struct mem_ctl_info {unsigned int mc_idx; unsigned int tot_dimms; unsigned int n_layers; unsigned int nr_csrows; unsigned int num_cschannel; int csbased; int op_state; struct dimm_info** dimms; struct csrow_info** csrows; struct edac_mc_layer* layers; void* pvt_info; int ** ue_per_layer; int ** ce_per_layer; } ;
struct edac_mc_layer {unsigned int size; size_t type; scalar_t__ is_virt_csrow; } ;
struct dimm_info {unsigned int* location; int csrow; int cschannel; void* label; struct mem_ctl_info* mci; } ;
struct csrow_info {int csrow_idx; unsigned int nr_channels; struct rank_info** channels; struct mem_ctl_info* mci; } ;
typedef int pos ;


 int BUG_ON (int) ;
 int EDAC_DIMM_OFF (struct edac_mc_layer*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int EDAC_MAX_LAYERS ;
 size_t EDAC_MC_LAYER_CHIP_SELECT ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int OP_ALLOC ;
 int _edac_mc_free (struct mem_ctl_info*) ;
 void* edac_align_ptr (void**,unsigned int,int) ;
 int edac_dbg (int,char*,unsigned int,...) ;
 char** edac_layer_name ;
 int edac_mc_printk (struct mem_ctl_info*,int ,char*) ;
 void* kcalloc (unsigned int,int,int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (struct edac_mc_layer*,struct edac_mc_layer*,int) ;
 int memset (unsigned int**,int ,int) ;
 int snprintf (void*,int,char*,...) ;

struct mem_ctl_info *edac_mc_alloc(unsigned int mc_num,
       unsigned int n_layers,
       struct edac_mc_layer *layers,
       unsigned int sz_pvt)
{
 struct mem_ctl_info *mci;
 struct edac_mc_layer *layer;
 struct csrow_info *csr;
 struct rank_info *chan;
 struct dimm_info *dimm;
 u32 *ce_per_layer[EDAC_MAX_LAYERS], *ue_per_layer[EDAC_MAX_LAYERS];
 unsigned int pos[EDAC_MAX_LAYERS];
 unsigned int size, tot_dimms = 1, count = 1;
 unsigned int tot_csrows = 1, tot_channels = 1, tot_errcount = 0;
 void *pvt, *p, *ptr = ((void*)0);
 int i, j, row, chn, n, len, off;
 bool per_rank = 0;

 BUG_ON(n_layers > EDAC_MAX_LAYERS || n_layers == 0);




 for (i = 0; i < n_layers; i++) {
  tot_dimms *= layers[i].size;
  if (layers[i].is_virt_csrow)
   tot_csrows *= layers[i].size;
  else
   tot_channels *= layers[i].size;

  if (layers[i].type == EDAC_MC_LAYER_CHIP_SELECT)
   per_rank = 1;
 }






 mci = edac_align_ptr(&ptr, sizeof(*mci), 1);
 layer = edac_align_ptr(&ptr, sizeof(*layer), n_layers);
 for (i = 0; i < n_layers; i++) {
  count *= layers[i].size;
  edac_dbg(4, "errcount layer %d size %d\n", i, count);
  ce_per_layer[i] = edac_align_ptr(&ptr, sizeof(u32), count);
  ue_per_layer[i] = edac_align_ptr(&ptr, sizeof(u32), count);
  tot_errcount += 2 * count;
 }

 edac_dbg(4, "allocating %d error counters\n", tot_errcount);
 pvt = edac_align_ptr(&ptr, sz_pvt, 1);
 size = ((unsigned long)pvt) + sz_pvt;

 edac_dbg(1, "allocating %u bytes for mci data (%d %s, %d csrows/channels)\n",
   size,
   tot_dimms,
   per_rank ? "ranks" : "dimms",
   tot_csrows * tot_channels);

 mci = kzalloc(size, GFP_KERNEL);
 if (mci == ((void*)0))
  return ((void*)0);




 layer = (struct edac_mc_layer *)(((char *)mci) + ((unsigned long)layer));
 for (i = 0; i < n_layers; i++) {
  mci->ce_per_layer[i] = (u32 *)((char *)mci + ((unsigned long)ce_per_layer[i]));
  mci->ue_per_layer[i] = (u32 *)((char *)mci + ((unsigned long)ue_per_layer[i]));
 }
 pvt = sz_pvt ? (((char *)mci) + ((unsigned long)pvt)) : ((void*)0);


 mci->mc_idx = mc_num;
 mci->tot_dimms = tot_dimms;
 mci->pvt_info = pvt;
 mci->n_layers = n_layers;
 mci->layers = layer;
 memcpy(mci->layers, layers, sizeof(*layer) * n_layers);
 mci->nr_csrows = tot_csrows;
 mci->num_cschannel = tot_channels;
 mci->csbased = per_rank;




 mci->csrows = kcalloc(tot_csrows, sizeof(*mci->csrows), GFP_KERNEL);
 if (!mci->csrows)
  goto error;
 for (row = 0; row < tot_csrows; row++) {
  csr = kzalloc(sizeof(**mci->csrows), GFP_KERNEL);
  if (!csr)
   goto error;
  mci->csrows[row] = csr;
  csr->csrow_idx = row;
  csr->mci = mci;
  csr->nr_channels = tot_channels;
  csr->channels = kcalloc(tot_channels, sizeof(*csr->channels),
     GFP_KERNEL);
  if (!csr->channels)
   goto error;

  for (chn = 0; chn < tot_channels; chn++) {
   chan = kzalloc(sizeof(**csr->channels), GFP_KERNEL);
   if (!chan)
    goto error;
   csr->channels[chn] = chan;
   chan->chan_idx = chn;
   chan->csrow = csr;
  }
 }




 mci->dimms = kcalloc(tot_dimms, sizeof(*mci->dimms), GFP_KERNEL);
 if (!mci->dimms)
  goto error;

 memset(&pos, 0, sizeof(pos));
 row = 0;
 chn = 0;
 for (i = 0; i < tot_dimms; i++) {
  chan = mci->csrows[row]->channels[chn];
  off = EDAC_DIMM_OFF(layer, n_layers, pos[0], pos[1], pos[2]);
  if (off < 0 || off >= tot_dimms) {
   edac_mc_printk(mci, KERN_ERR, "EDAC core bug: EDAC_DIMM_OFF is trying to do an illegal data access\n");
   goto error;
  }

  dimm = kzalloc(sizeof(**mci->dimms), GFP_KERNEL);
  if (!dimm)
   goto error;
  mci->dimms[off] = dimm;
  dimm->mci = mci;




  len = sizeof(dimm->label);
  p = dimm->label;
  n = snprintf(p, len, "mc#%u", mc_num);
  p += n;
  len -= n;
  for (j = 0; j < n_layers; j++) {
   n = snprintf(p, len, "%s#%u",
         edac_layer_name[layers[j].type],
         pos[j]);
   p += n;
   len -= n;
   dimm->location[j] = pos[j];

   if (len <= 0)
    break;
  }


  chan->dimm = dimm;
  dimm->csrow = row;
  dimm->cschannel = chn;


  if (layers[0].is_virt_csrow) {
   chn++;
   if (chn == tot_channels) {
    chn = 0;
    row++;
   }
  } else {
   row++;
   if (row == tot_csrows) {
    row = 0;
    chn++;
   }
  }


  for (j = n_layers - 1; j >= 0; j--) {
   pos[j]++;
   if (pos[j] < layers[j].size)
    break;
   pos[j] = 0;
  }
 }

 mci->op_state = OP_ALLOC;

 return mci;

error:
 _edac_mc_free(mci);

 return ((void*)0);
}
