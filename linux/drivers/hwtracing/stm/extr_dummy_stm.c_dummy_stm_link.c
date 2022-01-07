
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_data {int dummy; } ;


 int EINVAL ;
 unsigned int fail_mode ;

__attribute__((used)) static int dummy_stm_link(struct stm_data *data, unsigned int master,
     unsigned int channel)
{
 if (fail_mode && (channel & fail_mode))
  return -EINVAL;

 return 0;
}
