
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dimm_info {TYPE_1__* mci; int * location; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int n_layers; int** ue_per_layer; int layers; } ;


 int EDAC_DIMM_OFF (int ,int,int ,int ,int ) ;
 int sprintf (char*,char*,int) ;
 struct dimm_info* to_dimm (struct device*) ;

__attribute__((used)) static ssize_t dimmdev_ue_count_show(struct device *dev,
          struct device_attribute *mattr,
          char *data)
{
 struct dimm_info *dimm = to_dimm(dev);
 u32 count;
 int off;

 off = EDAC_DIMM_OFF(dimm->mci->layers,
       dimm->mci->n_layers,
       dimm->location[0],
       dimm->location[1],
       dimm->location[2]);
 count = dimm->mci->ue_per_layer[dimm->mci->n_layers-1][off];
 return sprintf(data, "%u\n", count);
}
