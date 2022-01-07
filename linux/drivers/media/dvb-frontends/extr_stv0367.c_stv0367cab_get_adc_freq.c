
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int stv0367cab_get_mclk (struct dvb_frontend*,int ) ;

__attribute__((used)) static u32 stv0367cab_get_adc_freq(struct dvb_frontend *fe, u32 ExtClk_Hz)
{
 u32 ADCClk_Hz = ExtClk_Hz;

 ADCClk_Hz = stv0367cab_get_mclk(fe, ExtClk_Hz);

 return ADCClk_Hz;
}
