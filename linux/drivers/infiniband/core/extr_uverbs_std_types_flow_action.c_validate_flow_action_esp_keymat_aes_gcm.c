
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_flow_action_esp_keymat_aes_gcm {scalar_t__ iv_algo; int key_len; int icv_len; } ;
struct TYPE_2__ {struct ib_uverbs_flow_action_esp_keymat_aes_gcm aes_gcm; } ;
struct ib_flow_action_attrs_esp_keymats {TYPE_1__ keymat; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IB_UVERBS_FLOW_ACTION_IV_ALGO_SEQ ;

__attribute__((used)) static int validate_flow_action_esp_keymat_aes_gcm(struct ib_flow_action_attrs_esp_keymats *keymat)
{
 struct ib_uverbs_flow_action_esp_keymat_aes_gcm *aes_gcm =
  &keymat->keymat.aes_gcm;

 if (aes_gcm->iv_algo > IB_UVERBS_FLOW_ACTION_IV_ALGO_SEQ)
  return -EOPNOTSUPP;

 if (aes_gcm->key_len != 32 &&
     aes_gcm->key_len != 24 &&
     aes_gcm->key_len != 16)
  return -EINVAL;

 if (aes_gcm->icv_len != 16 &&
     aes_gcm->icv_len != 8 &&
     aes_gcm->icv_len != 12)
  return -EINVAL;

 return 0;
}
