
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_encoder {int dummy; } ;


 int atombios_dig_transmitter_setup2 (struct drm_encoder*,int,int ,int ,int) ;

void
atombios_dig_transmitter_setup(struct drm_encoder *encoder, int action, uint8_t lane_num, uint8_t lane_set)
{
 atombios_dig_transmitter_setup2(encoder, action, lane_num, lane_set, -1);
}
