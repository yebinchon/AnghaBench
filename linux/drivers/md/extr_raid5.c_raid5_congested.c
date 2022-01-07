
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int empty_inactive_list_nr; scalar_t__ quiesce; int cache_state; } ;
struct mddev {struct r5conf* private; } ;


 int R5C_LOG_TIGHT ;
 int R5_INACTIVE_BLOCKED ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int raid5_congested(struct mddev *mddev, int bits)
{
 struct r5conf *conf = mddev->private;





 if (test_bit(R5_INACTIVE_BLOCKED, &conf->cache_state))
  return 1;


 if (test_bit(R5C_LOG_TIGHT, &conf->cache_state))
  return 1;
 if (conf->quiesce)
  return 1;
 if (atomic_read(&conf->empty_inactive_list_nr))
  return 1;

 return 0;
}
