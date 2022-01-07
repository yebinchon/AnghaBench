
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sti_mixer {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void sti_mixer_reg_write(struct sti_mixer *mixer,
           u32 reg_id, u32 val)
{
 writel(val, mixer->regs + reg_id);
}
