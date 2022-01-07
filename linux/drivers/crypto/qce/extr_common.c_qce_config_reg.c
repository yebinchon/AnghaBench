
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qce_device {int burst_size; int pipe_pair_id; } ;


 int BIT (int ) ;
 int HIGH_SPD_EN_N_SHIFT ;
 int LITTLE_ENDIAN_MODE_SHIFT ;
 int MASK_DIN_INTR_SHIFT ;
 int MASK_DOUT_INTR_SHIFT ;
 int MASK_ERR_INTR_SHIFT ;
 int MASK_OP_DONE_INTR_SHIFT ;
 int PIPE_SET_SELECT_MASK ;
 int PIPE_SET_SELECT_SHIFT ;
 int REQ_SIZE_MASK ;
 int REQ_SIZE_SHIFT ;

__attribute__((used)) static u32 qce_config_reg(struct qce_device *qce, int little)
{
 u32 beats = (qce->burst_size >> 3) - 1;
 u32 pipe_pair = qce->pipe_pair_id;
 u32 config;

 config = (beats << REQ_SIZE_SHIFT) & REQ_SIZE_MASK;
 config |= BIT(MASK_DOUT_INTR_SHIFT) | BIT(MASK_DIN_INTR_SHIFT) |
    BIT(MASK_OP_DONE_INTR_SHIFT) | BIT(MASK_ERR_INTR_SHIFT);
 config |= (pipe_pair << PIPE_SET_SELECT_SHIFT) & PIPE_SET_SELECT_MASK;
 config &= ~HIGH_SPD_EN_N_SHIFT;

 if (little)
  config |= BIT(LITTLE_ENDIAN_MODE_SHIFT);

 return config;
}
