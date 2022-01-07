
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {unsigned int idmac_reg; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void ipu_idmac_write(struct ipu_soc *ipu, u32 value,
       unsigned offset)
{
 writel(value, ipu->idmac_reg + offset);
}
