
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_vibrator {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void msm_vibrator_write(struct msm_vibrator *vibrator, int offset,
          u32 value)
{
 writel(value, vibrator->base + offset);
}
