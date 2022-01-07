
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;



__attribute__((used)) static enum iio_event_info iio_ev_attr_info(struct iio_dev_attr *attr)
{
 return (attr->address >> 16) & 0xffff;
}
