
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xadc {int mutex; } ;


 int _xadc_read_adc_reg (struct xadc*,unsigned int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int xadc_read_adc_reg(struct xadc *xadc, unsigned int reg,
 uint16_t *val)
{
 int ret;

 mutex_lock(&xadc->mutex);
 ret = _xadc_read_adc_reg(xadc, reg, val);
 mutex_unlock(&xadc->mutex);
 return ret;
}
