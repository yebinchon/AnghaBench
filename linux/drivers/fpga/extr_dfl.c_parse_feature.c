
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct dfl_fpga_enum_dfl {scalar_t__ ioaddr; } ;
struct build_feature_devs_info {int dev; } ;
typedef scalar_t__ resource_size_t ;


 scalar_t__ DFH ;
 int DFH_TYPE ;



 int FIELD_GET (int ,int ) ;
 int dev_info (int ,char*,int) ;
 int parse_feature_afu (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ;
 int parse_feature_fiu (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ;
 int parse_feature_private (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ;
 int readq (scalar_t__) ;

__attribute__((used)) static int parse_feature(struct build_feature_devs_info *binfo,
    struct dfl_fpga_enum_dfl *dfl, resource_size_t ofst)
{
 u64 v;
 u32 type;

 v = readq(dfl->ioaddr + ofst + DFH);
 type = FIELD_GET(DFH_TYPE, v);

 switch (type) {
 case 130:
  return parse_feature_afu(binfo, dfl, ofst);
 case 128:
  return parse_feature_private(binfo, dfl, ofst);
 case 129:
  return parse_feature_fiu(binfo, dfl, ofst);
 default:
  dev_info(binfo->dev,
    "Feature Type %x is not supported.\n", type);
 }

 return 0;
}
