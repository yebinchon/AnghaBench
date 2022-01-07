
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct safexcel_result_desc {int first_seg; int last_seg; int data_hi; int data_lo; int particle_size; } ;
struct safexcel_crypto_priv {TYPE_1__* ring; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int rdr; } ;


 scalar_t__ IS_ERR (struct safexcel_result_desc*) ;
 int lower_32_bits (int ) ;
 int memset (struct safexcel_result_desc*,int ,int) ;
 struct safexcel_result_desc* safexcel_ring_next_wptr (struct safexcel_crypto_priv*,int *) ;
 int upper_32_bits (int ) ;

struct safexcel_result_desc *safexcel_add_rdesc(struct safexcel_crypto_priv *priv,
      int ring_id,
      bool first, bool last,
      dma_addr_t data, u32 len)
{
 struct safexcel_result_desc *rdesc;

 rdesc = safexcel_ring_next_wptr(priv, &priv->ring[ring_id].rdr);
 if (IS_ERR(rdesc))
  return rdesc;

 memset(rdesc, 0, sizeof(struct safexcel_result_desc));

 rdesc->first_seg = first;
 rdesc->last_seg = last;
 rdesc->particle_size = len;
 rdesc->data_lo = lower_32_bits(data);
 rdesc->data_hi = upper_32_bits(data);

 return rdesc;
}
