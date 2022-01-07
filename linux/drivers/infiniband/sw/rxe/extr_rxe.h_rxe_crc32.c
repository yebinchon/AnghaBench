
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct rxe_dev {int tfm; } ;
struct TYPE_5__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int barrier_data (scalar_t__) ;
 int crc32_le (int ,void*,size_t) ;
 int crypto_shash_update (TYPE_1__*,void*,size_t) ;
 int pr_warn_ratelimited (char*,int) ;
 TYPE_1__* shash ;
 scalar_t__ shash_desc_ctx (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u32 rxe_crc32(struct rxe_dev *rxe,
       u32 crc, void *next, size_t len)
{
 u32 retval;
 int err;

 SHASH_DESC_ON_STACK(shash, rxe->tfm);

 shash->tfm = rxe->tfm;
 *(u32 *)shash_desc_ctx(shash) = crc;
 err = crypto_shash_update(shash, next, len);
 if (unlikely(err)) {
  pr_warn_ratelimited("failed crc calculation, err: %d\n", err);
  return crc32_le(crc, next, len);
 }

 retval = *(u32 *)shash_desc_ctx(shash);
 barrier_data(shash_desc_ctx(shash));
 return retval;
}
