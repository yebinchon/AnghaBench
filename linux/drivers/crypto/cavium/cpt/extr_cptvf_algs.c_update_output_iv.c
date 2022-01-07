
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct cpt_request_info {int rlen; TYPE_1__* out; } ;
struct TYPE_2__ {size_t size; void* vptr; } ;



__attribute__((used)) static inline void update_output_iv(struct cpt_request_info *req_info,
        u8 *iv, u32 enc_iv_len,
        u32 *argcnt)
{

 req_info->out[*argcnt].vptr = (void *)iv;
 req_info->out[*argcnt].size = enc_iv_len;
 req_info->rlen += enc_iv_len;

 ++(*argcnt);
}
