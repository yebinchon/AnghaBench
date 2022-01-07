
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct dfl_fpga_enum_dfl {scalar_t__ ioaddr; } ;
struct build_feature_devs_info {int dev; } ;
typedef scalar_t__ resource_size_t ;


 scalar_t__ DFH ;
 int DFH_ID ;
 scalar_t__ FIELD_GET (int ,int ) ;
 scalar_t__ NEXT_AFU ;
 int NEXT_AFU_NEXT_DFH_OFST ;
 int build_info_create_dev (struct build_feature_devs_info*,int ,scalar_t__) ;
 int create_feature_instance (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__,int ,int ) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dfh_id_to_type (scalar_t__) ;
 int parse_feature_afu (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ;
 int readq (scalar_t__) ;

__attribute__((used)) static int parse_feature_fiu(struct build_feature_devs_info *binfo,
        struct dfl_fpga_enum_dfl *dfl,
        resource_size_t ofst)
{
 u32 id, offset;
 u64 v;
 int ret = 0;

 v = readq(dfl->ioaddr + ofst + DFH);
 id = FIELD_GET(DFH_ID, v);


 ret = build_info_create_dev(binfo, dfh_id_to_type(id),
        dfl->ioaddr + ofst);
 if (ret)
  return ret;

 ret = create_feature_instance(binfo, dfl, ofst, 0, 0);
 if (ret)
  return ret;




 v = readq(dfl->ioaddr + ofst + NEXT_AFU);

 offset = FIELD_GET(NEXT_AFU_NEXT_DFH_OFST, v);
 if (offset)
  return parse_feature_afu(binfo, dfl, ofst + offset);

 dev_dbg(binfo->dev, "No AFUs detected on FIU %d\n", id);

 return ret;
}
