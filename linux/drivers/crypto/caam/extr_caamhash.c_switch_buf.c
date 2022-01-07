
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_hash_state {int current_buf; } ;



__attribute__((used)) static inline void switch_buf(struct caam_hash_state *state)
{
 state->current_buf ^= 1;
}
