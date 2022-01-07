
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ahash_req_ctx {int buff_index; int ** buffers; } ;



__attribute__((used)) static inline u8 *cc_next_buf(struct ahash_req_ctx *state)
{
 return state->buffers[state->buff_index ^ 1];
}
