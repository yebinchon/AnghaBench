
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ts_output_if; } ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; int io; TYPE_1__ create_param; } ;


 int ARRAY_SIZE (int ) ;
 int CXD2880_IO_TGT_DMD ;
 int CXD2880_IO_TGT_SYS ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;



 int EINVAL ;
 int cxd2880_io_write_multi_regs (int ,int ,int ,int ) ;
 int set_ts_output_seq1 ;
 int set_ts_output_seq2 ;
 int set_ts_output_seq3 ;
 int set_ts_output_seq4 ;

int cxd2880_tnrdmd_set_ts_output(struct cxd2880_tnrdmd *tnr_dmd,
     u8 en)
{
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 switch (tnr_dmd->create_param.ts_output_if) {
 case 128:
  if (en) {
   ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         set_ts_output_seq1,
         ARRAY_SIZE(set_ts_output_seq1));
   if (ret)
    return ret;

   ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         set_ts_output_seq2,
         ARRAY_SIZE(set_ts_output_seq2));
   if (ret)
    return ret;
  } else {
   ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         set_ts_output_seq3,
         ARRAY_SIZE(set_ts_output_seq3));
   if (ret)
    return ret;

   ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         set_ts_output_seq4,
         ARRAY_SIZE(set_ts_output_seq4));
   if (ret)
    return ret;
  }
  break;

 case 129:
  break;

 case 130:
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
