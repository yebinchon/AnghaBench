
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {int io; } ;


 int ARRAY_SIZE (int ) ;
 int CXD2880_IO_TGT_DMD ;
 int EINVAL ;
 int cxd2880_io_write_multi_regs (int ,int ,int ,int ) ;
 int x_sleep4_seq ;

__attribute__((used)) static int x_sleep4(struct cxd2880_tnrdmd *tnr_dmd)
{
 if (!tnr_dmd)
  return -EINVAL;

 return cxd2880_io_write_multi_regs(tnr_dmd->io,
        CXD2880_IO_TGT_DMD,
        x_sleep4_seq,
        ARRAY_SIZE(x_sleep4_seq));
}
