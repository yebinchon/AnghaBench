
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;



__attribute__((used)) static int dvb_dummy_fe_set_voltage(struct dvb_frontend *fe,
        enum fe_sec_voltage voltage)
{
 return 0;
}
