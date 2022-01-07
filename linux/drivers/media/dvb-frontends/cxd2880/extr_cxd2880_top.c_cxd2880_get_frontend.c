
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delivery_system; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; } ;
struct dtv_frontend_properties {int dummy; } ;


 int EINVAL ;


 int cxd2880_get_frontend_t (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int cxd2880_get_frontend_t2 (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *props)
{
 int ret;

 if (!fe || !props) {
  pr_err("invalid arg.");
  return -EINVAL;
 }

 pr_debug("system=%d\n", fe->dtv_property_cache.delivery_system);
 switch (fe->dtv_property_cache.delivery_system) {
 case 129:
  ret = cxd2880_get_frontend_t(fe, props);
  break;
 case 128:
  ret = cxd2880_get_frontend_t2(fe, props);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
