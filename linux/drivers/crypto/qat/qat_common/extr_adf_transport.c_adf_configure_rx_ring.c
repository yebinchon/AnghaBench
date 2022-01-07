
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct adf_etr_ring_data {int ring_number; TYPE_1__* bank; int ring_size; } ;
struct TYPE_2__ {int bank_number; int csr_addr; } ;


 int ADF_RING_NEAR_WATERMARK_0 ;
 int ADF_RING_NEAR_WATERMARK_512 ;
 int BUILD_RESP_RING_CONFIG (int ,int ,int ) ;
 int WRITE_CSR_RING_CONFIG (int ,int ,int ,int ) ;

__attribute__((used)) static void adf_configure_rx_ring(struct adf_etr_ring_data *ring)
{
 uint32_t ring_config =
   BUILD_RESP_RING_CONFIG(ring->ring_size,
            ADF_RING_NEAR_WATERMARK_512,
            ADF_RING_NEAR_WATERMARK_0);

 WRITE_CSR_RING_CONFIG(ring->bank->csr_addr, ring->bank->bank_number,
         ring->ring_number, ring_config);
}
