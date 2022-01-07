
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct synps_platform_data {int (* get_dtype ) (int ) ;int (* get_mtype ) (int ) ;} ;
struct synps_edac_priv {int baseaddr; struct synps_platform_data* p_data; } ;
struct mem_ctl_info {size_t nr_csrows; struct csrow_info** csrows; struct synps_edac_priv* pvt_info; } ;
struct dimm_info {size_t nr_pages; int dtype; int grain; int mtype; int edac_mode; } ;
struct csrow_info {int nr_channels; TYPE_1__** channels; } ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int EDAC_FLAG_SECDED ;
 size_t PAGE_SHIFT ;
 int SYNPS_EDAC_ERR_GRAIN ;
 size_t get_memsize () ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void init_csrows(struct mem_ctl_info *mci)
{
 struct synps_edac_priv *priv = mci->pvt_info;
 const struct synps_platform_data *p_data;
 struct csrow_info *csi;
 struct dimm_info *dimm;
 u32 size, row;
 int j;

 p_data = priv->p_data;

 for (row = 0; row < mci->nr_csrows; row++) {
  csi = mci->csrows[row];
  size = get_memsize();

  for (j = 0; j < csi->nr_channels; j++) {
   dimm = csi->channels[j]->dimm;
   dimm->edac_mode = EDAC_FLAG_SECDED;
   dimm->mtype = p_data->get_mtype(priv->baseaddr);
   dimm->nr_pages = (size >> PAGE_SHIFT) / csi->nr_channels;
   dimm->grain = SYNPS_EDAC_ERR_GRAIN;
   dimm->dtype = p_data->get_dtype(priv->baseaddr);
  }
 }
}
