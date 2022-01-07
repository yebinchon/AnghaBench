
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_vdi {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 ipu_vdi_read(struct ipu_vdi *vdi, unsigned int offset)
{
 return readl(vdi->base + offset);
}
