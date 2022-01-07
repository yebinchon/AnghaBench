
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dfl_fpga_enum_dfl {int dummy; } ;
struct build_feature_devs_info {TYPE_1__* feature_dev; int dev; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;

 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 int feature_dev_id_type (TYPE_1__*) ;
 int parse_feature_port_afu (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,int ) ;

__attribute__((used)) static int parse_feature_afu(struct build_feature_devs_info *binfo,
        struct dfl_fpga_enum_dfl *dfl,
        resource_size_t ofst)
{
 if (!binfo->feature_dev) {
  dev_err(binfo->dev, "this AFU does not belong to any FIU.\n");
  return -EINVAL;
 }

 switch (feature_dev_id_type(binfo->feature_dev)) {
 case 128:
  return parse_feature_port_afu(binfo, dfl, ofst);
 default:
  dev_info(binfo->dev, "AFU belonging to FIU %s is not supported yet.\n",
    binfo->feature_dev->name);
 }

 return 0;
}
