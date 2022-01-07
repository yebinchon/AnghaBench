
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skb_checksum_ops {int combine; int update; } ;
struct siw_rx_stream {int mpa_crc_hd; int skb_offset; int skb; } ;
typedef int __wsum ;


 int __skb_checksum (int ,int ,unsigned int,int ,struct skb_checksum_ops const*) ;
 scalar_t__ shash_desc_ctx (int ) ;
 int siw_csum_combine ;
 int siw_csum_update ;

__attribute__((used)) static inline void siw_crc_skb(struct siw_rx_stream *srx, unsigned int len)
{
 const struct skb_checksum_ops siw_cs_ops = {
  .update = siw_csum_update,
  .combine = siw_csum_combine,
 };
 __wsum crc = *(u32 *)shash_desc_ctx(srx->mpa_crc_hd);

 crc = __skb_checksum(srx->skb, srx->skb_offset, len, crc,
        &siw_cs_ops);
 *(u32 *)shash_desc_ctx(srx->mpa_crc_hd) = crc;
}
