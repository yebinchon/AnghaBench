
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct dfl_fpga_enum_dfl {scalar_t__ ioaddr; scalar_t__ len; scalar_t__ start; } ;
struct TYPE_2__ {scalar_t__ start; int flags; scalar_t__ end; } ;
struct dfl_feature_info {int node; scalar_t__ ioaddr; TYPE_1__ mmio_res; scalar_t__ fid; } ;
struct build_feature_devs_info {int feature_num; int sub_features; } ;
typedef scalar_t__ resource_size_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ feature_id (scalar_t__) ;
 scalar_t__ feature_size (scalar_t__) ;
 struct dfl_feature_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int
create_feature_instance(struct build_feature_devs_info *binfo,
   struct dfl_fpga_enum_dfl *dfl, resource_size_t ofst,
   resource_size_t size, u64 fid)
{
 struct dfl_feature_info *finfo;


 size = size ? size : feature_size(dfl->ioaddr + ofst);
 fid = fid ? fid : feature_id(dfl->ioaddr + ofst);

 if (dfl->len - ofst < size)
  return -EINVAL;

 finfo = kzalloc(sizeof(*finfo), GFP_KERNEL);
 if (!finfo)
  return -ENOMEM;

 finfo->fid = fid;
 finfo->mmio_res.start = dfl->start + ofst;
 finfo->mmio_res.end = finfo->mmio_res.start + size - 1;
 finfo->mmio_res.flags = IORESOURCE_MEM;
 finfo->ioaddr = dfl->ioaddr + ofst;

 list_add_tail(&finfo->node, &binfo->sub_features);
 binfo->feature_num++;

 return 0;
}
