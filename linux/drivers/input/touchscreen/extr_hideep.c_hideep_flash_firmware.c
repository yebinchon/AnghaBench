
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hideep_ts {int dummy; } ;
typedef int __be32 ;


 int hideep_program_nvm (struct hideep_ts*,int const*,size_t) ;
 int hideep_verify_nvm (struct hideep_ts*,int const*,size_t) ;

__attribute__((used)) static int hideep_flash_firmware(struct hideep_ts *ts,
     const __be32 *ucode, size_t ucode_len)
{
 int retry_cnt = 3;
 int error;

 while (retry_cnt--) {
  error = hideep_program_nvm(ts, ucode, ucode_len);
  if (!error) {
   error = hideep_verify_nvm(ts, ucode, ucode_len);
   if (!error)
    return 0;
  }
 }

 return error;
}
