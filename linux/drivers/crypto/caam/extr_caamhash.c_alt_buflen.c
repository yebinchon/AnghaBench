
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_hash_state {int buflen_0; int buflen_1; scalar_t__ current_buf; } ;



__attribute__((used)) static inline int *alt_buflen(struct caam_hash_state *state)
{
 return state->current_buf ? &state->buflen_0 : &state->buflen_1;
}
