
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amdgpu_dm_pipe_crc_source { ____Placeholder_amdgpu_dm_pipe_crc_source } amdgpu_dm_pipe_crc_source ;


 int AMDGPU_DM_PIPE_CRC_SOURCE_CRTC_DITHER ;
 int AMDGPU_DM_PIPE_CRC_SOURCE_DPRX_DITHER ;
 int AMDGPU_DM_PIPE_CRC_SOURCE_NONE ;

__attribute__((used)) static bool dm_need_crc_dither(enum amdgpu_dm_pipe_crc_source src)
{
 return (src == AMDGPU_DM_PIPE_CRC_SOURCE_CRTC_DITHER) ||
        (src == AMDGPU_DM_PIPE_CRC_SOURCE_DPRX_DITHER) ||
        (src == AMDGPU_DM_PIPE_CRC_SOURCE_NONE);
}
