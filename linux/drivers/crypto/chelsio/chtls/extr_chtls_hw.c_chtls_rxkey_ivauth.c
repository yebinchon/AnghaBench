
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _key_ctx {int iv_to_auth; } ;


 int KEYCTX_TX_WR_AADST_V (unsigned long long) ;
 int KEYCTX_TX_WR_AAD_V (unsigned long long) ;
 int KEYCTX_TX_WR_AUTHIN_V (unsigned long long) ;
 int KEYCTX_TX_WR_AUTHST_V (unsigned long long) ;
 int KEYCTX_TX_WR_AUTH_V (unsigned long long) ;
 int KEYCTX_TX_WR_CIPHERST_V (unsigned long long) ;
 int KEYCTX_TX_WR_CIPHER_V (unsigned long long) ;
 int KEYCTX_TX_WR_IV_V (unsigned long long) ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static void chtls_rxkey_ivauth(struct _key_ctx *kctx)
{
 kctx->iv_to_auth = cpu_to_be64(KEYCTX_TX_WR_IV_V(6ULL) |
      KEYCTX_TX_WR_AAD_V(1ULL) |
      KEYCTX_TX_WR_AADST_V(5ULL) |
      KEYCTX_TX_WR_CIPHER_V(14ULL) |
      KEYCTX_TX_WR_CIPHERST_V(0ULL) |
      KEYCTX_TX_WR_AUTH_V(14ULL) |
      KEYCTX_TX_WR_AUTHST_V(16ULL) |
      KEYCTX_TX_WR_AUTHIN_V(16ULL));
}
