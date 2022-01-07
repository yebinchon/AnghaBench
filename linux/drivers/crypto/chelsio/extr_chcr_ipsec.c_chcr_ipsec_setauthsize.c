
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {TYPE_1__* aead; } ;
struct ipsec_sa_entry {int authsize; } ;
struct TYPE_2__ {int alg_icv_len; } ;


 int CHCR_SCMD_HMAC_CTRL_DIV2 ;
 int CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT ;
 int CHCR_SCMD_HMAC_CTRL_NO_TRUNC ;
 int EINVAL ;




__attribute__((used)) static inline int chcr_ipsec_setauthsize(struct xfrm_state *x,
      struct ipsec_sa_entry *sa_entry)
{
 int hmac_ctrl;
 int authsize = x->aead->alg_icv_len / 8;

 sa_entry->authsize = authsize;

 switch (authsize) {
 case 128:
  hmac_ctrl = CHCR_SCMD_HMAC_CTRL_DIV2;
  break;
 case 130:
  hmac_ctrl = CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT;
  break;
 case 129:
  hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
  break;
 default:
  return -EINVAL;
 }
 return hmac_ctrl;
}
