
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {unsigned int idmac_reg; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32 ipu_idmac_read(struct ipu_soc *ipu, unsigned offset)
{
 return readl(ipu->idmac_reg + offset);
}
