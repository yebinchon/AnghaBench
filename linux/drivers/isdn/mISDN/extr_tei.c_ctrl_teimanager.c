
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manager {int options; } ;


 int EINVAL ;


 int OPTION_L1_HOLD ;
 int OPTION_L2_CLEANUP ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
ctrl_teimanager(struct manager *mgr, void *arg)
{

 unsigned int *val = (unsigned int *)arg;

 switch (val[0]) {
 case 129:
  if (val[1])
   test_and_set_bit(OPTION_L2_CLEANUP, &mgr->options);
  else
   test_and_clear_bit(OPTION_L2_CLEANUP, &mgr->options);
  break;
 case 128:
  if (val[1])
   test_and_set_bit(OPTION_L1_HOLD, &mgr->options);
  else
   test_and_clear_bit(OPTION_L1_HOLD, &mgr->options);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
