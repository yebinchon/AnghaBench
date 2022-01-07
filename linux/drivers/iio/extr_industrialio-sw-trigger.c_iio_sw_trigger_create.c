
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_sw_trigger_type {int owner; TYPE_1__* ops; } ;
struct iio_sw_trigger {struct iio_sw_trigger_type* trigger_type; } ;
struct TYPE_2__ {struct iio_sw_trigger* (* probe ) (char const*) ;} ;


 int EINVAL ;
 struct iio_sw_trigger* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct iio_sw_trigger*) ;
 struct iio_sw_trigger_type* iio_get_sw_trigger_type (char const*) ;
 int module_put (int ) ;
 int pr_err (char*,char const*) ;
 struct iio_sw_trigger* stub1 (char const*) ;

struct iio_sw_trigger *iio_sw_trigger_create(const char *type, const char *name)
{
 struct iio_sw_trigger *t;
 struct iio_sw_trigger_type *tt;

 tt = iio_get_sw_trigger_type(type);
 if (!tt) {
  pr_err("Invalid trigger type: %s\n", type);
  return ERR_PTR(-EINVAL);
 }
 t = tt->ops->probe(name);
 if (IS_ERR(t))
  goto out_module_put;

 t->trigger_type = tt;

 return t;
out_module_put:
 module_put(tt->owner);
 return t;
}
