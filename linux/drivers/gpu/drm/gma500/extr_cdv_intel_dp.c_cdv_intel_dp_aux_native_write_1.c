
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct gma_encoder {int dummy; } ;


 int cdv_intel_dp_aux_native_write (struct gma_encoder*,int ,int *,int) ;

__attribute__((used)) static int
cdv_intel_dp_aux_native_write_1(struct gma_encoder *encoder,
       uint16_t address, uint8_t byte)
{
 return cdv_intel_dp_aux_native_write(encoder, address, &byte, 1);
}
