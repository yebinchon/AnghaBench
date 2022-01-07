
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct gma_encoder {int dummy; } ;


 int cdv_intel_dp_aux_native_read (struct gma_encoder*,int ,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static bool
cdv_intel_dp_aux_native_read_retry(struct gma_encoder *encoder, uint16_t address,
          uint8_t *recv, int recv_bytes)
{
 int ret, i;





 for (i = 0; i < 3; i++) {
  ret = cdv_intel_dp_aux_native_read(encoder, address, recv,
            recv_bytes);
  if (ret == recv_bytes)
   return 1;
  udelay(1000);
 }

 return 0;
}
