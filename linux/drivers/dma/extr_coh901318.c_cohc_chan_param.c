
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coh901318_params {int dummy; } ;
struct coh901318_chan {size_t id; } ;
struct TYPE_2__ {struct coh901318_params const param; } ;


 TYPE_1__* chan_config ;

__attribute__((used)) static inline const struct coh901318_params *
cohc_chan_param(struct coh901318_chan *cohc)
{
 return &chan_config[cohc->id].param;
}
