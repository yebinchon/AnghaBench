
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_vdi {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ipu_vdi_write(struct ipu_vdi *vdi, u32 value,
     unsigned int offset)
{
 writel(value, vdi->base + offset);
}
