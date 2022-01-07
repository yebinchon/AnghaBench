
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int EINVAL ;
 int INTEL_PIPE_CRC_SOURCE_AUTO ;




 int PIPE_CRC_ENABLE ;
 int PIPE_CRC_SOURCE_PIPE_ILK ;
 int PIPE_CRC_SOURCE_PRIMARY_ILK ;
 int PIPE_CRC_SOURCE_SPRITE_ILK ;

__attribute__((used)) static int ilk_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
    u32 *val)
{
 if (*source == INTEL_PIPE_CRC_SOURCE_AUTO)
  *source = 130;

 switch (*source) {
 case 129:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PRIMARY_ILK;
  break;
 case 128:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_SPRITE_ILK;
  break;
 case 130:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PIPE_ILK;
  break;
 case 131:
  *val = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
