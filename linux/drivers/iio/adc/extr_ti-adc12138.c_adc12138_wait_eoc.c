
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc12138 {int complete; } ;


 int ETIMEDOUT ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int adc12138_wait_eoc(struct adc12138 *adc, unsigned long timeout)
{
 if (!wait_for_completion_timeout(&adc->complete, timeout))
  return -ETIMEDOUT;

 return 0;
}
