
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venc_device {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void venc_write_reg(struct venc_device *venc, int idx, u32 val)
{
 __raw_writel(val, venc->base + idx);
}
