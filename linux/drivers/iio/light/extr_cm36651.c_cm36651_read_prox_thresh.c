
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm36651_data {int* ps_ctrl_regs; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 size_t CM36651_PS_THD ;
 struct cm36651_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cm36651_read_prox_thresh(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     enum iio_event_type type,
     enum iio_event_direction dir,
     enum iio_event_info info,
     int *val, int *val2)
{
 struct cm36651_data *cm36651 = iio_priv(indio_dev);

 *val = cm36651->ps_ctrl_regs[CM36651_PS_THD];

 return 0;
}
