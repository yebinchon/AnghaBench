
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct caam_hash_state {int * buf_1; int * buf_0; scalar_t__ current_buf; } ;



__attribute__((used)) static inline u8 *alt_buf(struct caam_hash_state *state)
{
 return state->current_buf ? state->buf_0 : state->buf_1;
}
