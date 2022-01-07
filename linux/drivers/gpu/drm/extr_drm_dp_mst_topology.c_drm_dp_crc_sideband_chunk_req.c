
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t drm_dp_msg_data_crc4 (size_t*,size_t) ;

__attribute__((used)) static void drm_dp_crc_sideband_chunk_req(u8 *msg, u8 len)
{
 u8 crc4;
 crc4 = drm_dp_msg_data_crc4(msg, len);
 msg[len] = crc4;
}
