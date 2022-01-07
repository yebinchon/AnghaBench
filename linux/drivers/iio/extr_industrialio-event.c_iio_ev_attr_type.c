
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev_attr {int address; TYPE_2__* c; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
struct TYPE_4__ {TYPE_1__* event_spec; } ;
struct TYPE_3__ {int type; } ;



__attribute__((used)) static enum iio_event_type iio_ev_attr_type(struct iio_dev_attr *attr)
{
 return attr->c->event_spec[attr->address & 0xffff].type;
}
