
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mdp5_kms {scalar_t__ enable_count; scalar_t__ mmio; } ;


 int WARN_ON (int) ;
 int msm_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mdp5_write(struct mdp5_kms *mdp5_kms, u32 reg, u32 data)
{
 WARN_ON(mdp5_kms->enable_count <= 0);
 msm_writel(data, mdp5_kms->mmio + reg);
}
