
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amdgpu_dm_pipe_crc_source { ____Placeholder_amdgpu_dm_pipe_crc_source } amdgpu_dm_pipe_crc_source ;


 int AMDGPU_DM_PIPE_CRC_SOURCE_MAX ;
 int AMDGPU_DM_PIPE_CRC_SOURCE_NONE ;

__attribute__((used)) static inline bool amdgpu_dm_is_valid_crc_source(enum amdgpu_dm_pipe_crc_source source)
{
 return (source > AMDGPU_DM_PIPE_CRC_SOURCE_NONE) &&
        (source < AMDGPU_DM_PIPE_CRC_SOURCE_MAX);
}
