
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpu_rm_hw_iter {int type; int enc_id; } ;
typedef enum dpu_hw_blk_type { ____Placeholder_dpu_hw_blk_type } dpu_hw_blk_type ;


 int memset (struct dpu_rm_hw_iter*,int ,int) ;

void dpu_rm_init_hw_iter(
  struct dpu_rm_hw_iter *iter,
  uint32_t enc_id,
  enum dpu_hw_blk_type type)
{
 memset(iter, 0, sizeof(*iter));
 iter->enc_id = enc_id;
 iter->type = type;
}
