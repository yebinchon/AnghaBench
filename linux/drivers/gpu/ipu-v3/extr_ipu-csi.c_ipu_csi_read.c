
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_csi {unsigned int base; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32 ipu_csi_read(struct ipu_csi *csi, unsigned offset)
{
 return readl(csi->base + offset);
}
