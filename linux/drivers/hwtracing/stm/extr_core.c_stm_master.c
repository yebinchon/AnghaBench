
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stp_master {int dummy; } ;
struct stm_device {TYPE_1__* data; } ;
struct TYPE_2__ {unsigned int sw_start; unsigned int sw_end; } ;


 struct stp_master* __stm_master (struct stm_device*,unsigned int) ;

__attribute__((used)) static inline struct stp_master *
stm_master(struct stm_device *stm, unsigned int idx)
{
 if (idx < stm->data->sw_start || idx > stm->data->sw_end)
  return ((void*)0);

 return __stm_master(stm, idx);
}
