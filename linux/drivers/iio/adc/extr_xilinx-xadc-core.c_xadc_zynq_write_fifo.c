
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xadc {int dummy; } ;


 int XADC_ZYNQ_REG_CFIFO ;
 int xadc_write_reg (struct xadc*,int ,int ) ;

__attribute__((used)) static void xadc_zynq_write_fifo(struct xadc *xadc, uint32_t *cmd,
 unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; i++)
  xadc_write_reg(xadc, XADC_ZYNQ_REG_CFIFO, cmd[i]);
}
