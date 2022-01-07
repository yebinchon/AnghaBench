
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct xadc {TYPE_1__* ops; int mutex; } ;
struct TYPE_2__ {int (* write ) (struct xadc*,unsigned int,int ) ;} ;


 int lockdep_assert_held (int *) ;
 int stub1 (struct xadc*,unsigned int,int ) ;

__attribute__((used)) static inline int _xadc_write_adc_reg(struct xadc *xadc, unsigned int reg,
 uint16_t val)
{
 lockdep_assert_held(&xadc->mutex);
 return xadc->ops->write(xadc, reg, val);
}
