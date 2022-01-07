
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_csi {unsigned int base; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void ipu_csi_write(struct ipu_csi *csi, u32 value,
     unsigned offset)
{
 writel(value, csi->base + offset);
}
