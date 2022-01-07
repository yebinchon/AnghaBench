
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cryp_algo_mode { ____Placeholder_cryp_algo_mode } cryp_algo_mode ;


 int CRYP_ALGO_AES_CBC ;
 int CRYP_ALGO_AES_CTR ;
 int CRYP_ALGO_AES_ECB ;
 int CRYP_ALGO_AES_XTS ;

__attribute__((used)) static int mode_is_aes(enum cryp_algo_mode mode)
{
 return CRYP_ALGO_AES_ECB == mode ||
  CRYP_ALGO_AES_CBC == mode ||
  CRYP_ALGO_AES_CTR == mode ||
  CRYP_ALGO_AES_XTS == mode;
}
