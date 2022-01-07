
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mixer_context {int dummy; } ;


 int BUG_ON (unsigned int) ;
 int vp_reg_write (struct mixer_context*,int,int) ;

__attribute__((used)) static inline void vp_filter_set(struct mixer_context *ctx,
  int reg_id, const u8 *data, unsigned int size)
{

 BUG_ON(size & 3);
 for (; size; size -= 4, reg_id += 4, data += 4) {
  u32 val = (data[0] << 24) | (data[1] << 16) |
   (data[2] << 8) | data[3];
  vp_reg_write(ctx, reg_id, val);
 }
}
