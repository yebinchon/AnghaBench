
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct shash_desc {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_MPA_CRC ;
 int crypto_shash_final (struct shash_desc*,int *) ;
 int crypto_shash_init (struct shash_desc*) ;
 int crypto_shash_update (struct shash_desc*,void*,scalar_t__) ;
 int i40iw_pr_err (char*) ;

enum i40iw_status_code i40iw_ieq_check_mpacrc(struct shash_desc *desc,
           void *addr,
           u32 length,
           u32 value)
{
 u32 crc = 0;
 int ret;
 enum i40iw_status_code ret_code = 0;

 crypto_shash_init(desc);
 ret = crypto_shash_update(desc, addr, length);
 if (!ret)
  crypto_shash_final(desc, (u8 *)&crc);
 if (crc != value) {
  i40iw_pr_err("mpa crc check fail\n");
  ret_code = I40IW_ERR_MPA_CRC;
 }
 return ret_code;
}
