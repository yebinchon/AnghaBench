
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {int dtv_property_cache; } ;
struct dtv_frontend_properties {int dummy; } ;
typedef int getp ;


 int dtv_get_frontend (struct dvb_frontend*,struct dtv_frontend_properties*,struct dvb_frontend_parameters*) ;
 int memcpy (struct dtv_frontend_properties*,int *,int) ;

__attribute__((used)) static int dvb_get_frontend(struct dvb_frontend *fe,
       struct dvb_frontend_parameters *p_out)
{
 struct dtv_frontend_properties getp;







 memcpy(&getp, &fe->dtv_property_cache, sizeof(getp));

 return dtv_get_frontend(fe, &getp, p_out);
}
