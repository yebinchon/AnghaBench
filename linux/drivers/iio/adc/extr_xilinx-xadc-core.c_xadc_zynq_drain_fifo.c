
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xadc {int dummy; } ;


 int XADC_ZYNQ_REG_DFIFO ;
 int XADC_ZYNQ_REG_STATUS ;
 int XADC_ZYNQ_STATUS_DFIFOE ;
 int xadc_read_reg (struct xadc*,int ,int*) ;

__attribute__((used)) static void xadc_zynq_drain_fifo(struct xadc *xadc)
{
 uint32_t status, tmp;

 xadc_read_reg(xadc, XADC_ZYNQ_REG_STATUS, &status);

 while (!(status & XADC_ZYNQ_STATUS_DFIFOE)) {
  xadc_read_reg(xadc, XADC_ZYNQ_REG_DFIFO, &tmp);
  xadc_read_reg(xadc, XADC_ZYNQ_REG_STATUS, &status);
 }
}
