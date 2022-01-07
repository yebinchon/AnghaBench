
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {int dummy; } ;
struct r5conf {struct r5l_log* log; } ;
struct mddev {struct r5conf* private; } ;
struct md_thread {struct mddev* mddev; } ;


 int r5c_do_reclaim (struct r5conf*) ;
 int r5l_do_reclaim (struct r5l_log*) ;

__attribute__((used)) static void r5l_reclaim_thread(struct md_thread *thread)
{
 struct mddev *mddev = thread->mddev;
 struct r5conf *conf = mddev->private;
 struct r5l_log *log = conf->log;

 if (!log)
  return;
 r5c_do_reclaim(conf);
 r5l_do_reclaim(log);
}
