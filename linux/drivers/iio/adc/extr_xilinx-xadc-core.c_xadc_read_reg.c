
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xadc {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static void xadc_read_reg(struct xadc *xadc, unsigned int reg,
 uint32_t *val)
{
 *val = readl(xadc->base + reg);
}
