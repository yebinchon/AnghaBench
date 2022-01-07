
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ahash_req_ctx {size_t buff_index; int * buf_cnt; } ;



__attribute__((used)) static inline u32 *cc_hash_buf_cnt(struct ahash_req_ctx *state)
{
 return &state->buf_cnt[state->buff_index];
}
