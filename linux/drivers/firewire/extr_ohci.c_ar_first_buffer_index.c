
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_context {int last_buffer_index; } ;


 unsigned int ar_next_buffer_index (int ) ;

__attribute__((used)) static inline unsigned int ar_first_buffer_index(struct ar_context *ctx)
{
 return ar_next_buffer_index(ctx->last_buffer_index);
}
