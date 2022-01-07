
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int * sec_priv; } ;


 int SEC_VOLTAGE_OFF ;
 int isl6405_set_voltage (struct dvb_frontend*,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void isl6405_release(struct dvb_frontend *fe)
{

 isl6405_set_voltage(fe, SEC_VOLTAGE_OFF);


 kfree(fe->sec_priv);
 fe->sec_priv = ((void*)0);
}
