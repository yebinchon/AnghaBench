
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int dib7000p_get_adc_power (struct dvb_frontend*) ;

__attribute__((used)) static int dib7090_get_adc_power(struct dvb_frontend *fe)
{
 return dib7000p_get_adc_power(fe);
}
