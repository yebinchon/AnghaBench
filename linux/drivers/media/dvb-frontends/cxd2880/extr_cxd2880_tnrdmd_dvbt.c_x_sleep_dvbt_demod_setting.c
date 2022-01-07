
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {scalar_t__ diver_mode; int io; } ;


 int ARRAY_SIZE (int ) ;
 int CXD2880_IO_TGT_DMD ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 int EINVAL ;
 int cxd2880_io_write_multi_regs (int ,int ,int ,int ) ;
 int sleep_dmd_setting_seq1 ;
 int sleep_dmd_setting_seq2 ;

__attribute__((used)) static int x_sleep_dvbt_demod_setting(struct cxd2880_tnrdmd
         *tnr_dmd)
{
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
       CXD2880_IO_TGT_DMD,
       sleep_dmd_setting_seq1,
       ARRAY_SIZE(sleep_dmd_setting_seq1));
 if (ret)
  return ret;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
        CXD2880_IO_TGT_DMD,
        sleep_dmd_setting_seq2,
        ARRAY_SIZE(sleep_dmd_setting_seq2));

 return ret;
}
