
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__* h_code_timing; scalar_t__* v_code_timing; int tv_uv_adr; } ;
struct radeon_encoder_tv_dac {TYPE_2__ tv; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_encoder {struct radeon_encoder_tv_dac* enc_priv; TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int MAX_H_CODE_TIMING_LEN ;
 int MAX_V_CODE_TIMING_LEN ;
 int RADEON_TV_UV_ADR ;
 int WREG32 (int ,int ) ;
 int radeon_get_htiming_tables_addr (int ) ;
 int radeon_get_vtiming_tables_addr (int ) ;
 int radeon_legacy_tv_write_fifo (struct radeon_encoder*,int ,int) ;

__attribute__((used)) static void radeon_restore_tv_timing_tables(struct radeon_encoder *radeon_encoder)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder_tv_dac *tv_dac = radeon_encoder->enc_priv;
 uint16_t h_table, v_table;
 uint32_t tmp;
 int i;

 WREG32(RADEON_TV_UV_ADR, tv_dac->tv.tv_uv_adr);
 h_table = radeon_get_htiming_tables_addr(tv_dac->tv.tv_uv_adr);
 v_table = radeon_get_vtiming_tables_addr(tv_dac->tv.tv_uv_adr);

 for (i = 0; i < MAX_H_CODE_TIMING_LEN; i += 2, h_table--) {
  tmp = ((uint32_t)tv_dac->tv.h_code_timing[i] << 14) | ((uint32_t)tv_dac->tv.h_code_timing[i+1]);
  radeon_legacy_tv_write_fifo(radeon_encoder, h_table, tmp);
  if (tv_dac->tv.h_code_timing[i] == 0 || tv_dac->tv.h_code_timing[i + 1] == 0)
   break;
 }
 for (i = 0; i < MAX_V_CODE_TIMING_LEN; i += 2, v_table++) {
  tmp = ((uint32_t)tv_dac->tv.v_code_timing[i+1] << 14) | ((uint32_t)tv_dac->tv.v_code_timing[i]);
  radeon_legacy_tv_write_fifo(radeon_encoder, v_table, tmp);
  if (tv_dac->tv.v_code_timing[i] == 0 || tv_dac->tv.v_code_timing[i + 1] == 0)
   break;
 }
}
