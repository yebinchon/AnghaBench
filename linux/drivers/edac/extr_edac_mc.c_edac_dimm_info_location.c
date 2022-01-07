
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int n_layers; TYPE_1__* layers; } ;
struct dimm_info {int* location; struct mem_ctl_info* mci; } ;
struct TYPE_2__ {size_t type; } ;


 char** edac_layer_name ;
 int snprintf (char*,unsigned int,char*,char*,int) ;

unsigned int edac_dimm_info_location(struct dimm_info *dimm, char *buf,
         unsigned int len)
{
 struct mem_ctl_info *mci = dimm->mci;
 int i, n, count = 0;
 char *p = buf;

 for (i = 0; i < mci->n_layers; i++) {
  n = snprintf(p, len, "%s %d ",
         edac_layer_name[mci->layers[i].type],
         dimm->location[i]);
  p += n;
  len -= n;
  count += n;
  if (!len)
   break;
 }

 return count;
}
