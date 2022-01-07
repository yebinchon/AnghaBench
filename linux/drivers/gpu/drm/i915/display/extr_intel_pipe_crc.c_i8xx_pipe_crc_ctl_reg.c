
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int EINVAL ;
 int INTEL_PIPE_CRC_SOURCE_AUTO ;


 int PIPE_CRC_ENABLE ;
 int PIPE_CRC_INCLUDE_BORDER_I8XX ;

__attribute__((used)) static int i8xx_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
     u32 *val)
{
 if (*source == INTEL_PIPE_CRC_SOURCE_AUTO)
  *source = 128;

 switch (*source) {
 case 128:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_INCLUDE_BORDER_I8XX;
  break;
 case 129:
  *val = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
