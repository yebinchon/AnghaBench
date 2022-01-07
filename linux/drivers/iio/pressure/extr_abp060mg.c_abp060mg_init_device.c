
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct abp_state {scalar_t__ scale; int offset; } ;
struct abp_config {scalar_t__ max; scalar_t__ min; } ;


 int ABP060MG_MIN_COUNTS ;
 int ABP060MG_NUM_COUNTS ;
 struct abp_config* abp_config ;
 struct abp_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static void abp060mg_init_device(struct iio_dev *indio_dev, unsigned long id)
{
 struct abp_state *state = iio_priv(indio_dev);
 struct abp_config *cfg = &abp_config[id];

 state->scale = cfg->max - cfg->min;
 state->offset = -ABP060MG_MIN_COUNTS;

 if (cfg->min < 0)
  state->offset -= ABP060MG_NUM_COUNTS >> 1;
}
