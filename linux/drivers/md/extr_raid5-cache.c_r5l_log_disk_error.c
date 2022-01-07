
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {TYPE_2__* rdev; } ;
struct r5conf {TYPE_1__* mddev; int log; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 int Faulty ;
 int MD_HAS_JOURNAL ;
 struct r5l_log* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

bool r5l_log_disk_error(struct r5conf *conf)
{
 struct r5l_log *log;
 bool ret;

 rcu_read_lock();
 log = rcu_dereference(conf->log);

 if (!log)
  ret = test_bit(MD_HAS_JOURNAL, &conf->mddev->flags);
 else
  ret = test_bit(Faulty, &log->rdev->flags);
 rcu_read_unlock();
 return ret;
}
