
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct md_rdev {long last_read_error; int read_errors; } ;
typedef int read_errors ;


 unsigned int atomic_read (int *) ;
 int atomic_set (int *,unsigned int) ;
 long ktime_get_seconds () ;

__attribute__((used)) static void check_decay_read_errors(struct mddev *mddev, struct md_rdev *rdev)
{
 long cur_time_mon;
 unsigned long hours_since_last;
 unsigned int read_errors = atomic_read(&rdev->read_errors);

 cur_time_mon = ktime_get_seconds();

 if (rdev->last_read_error == 0) {

  rdev->last_read_error = cur_time_mon;
  return;
 }

 hours_since_last = (long)(cur_time_mon -
       rdev->last_read_error) / 3600;

 rdev->last_read_error = cur_time_mon;






 if (hours_since_last >= 8 * sizeof(read_errors))
  atomic_set(&rdev->read_errors, 0);
 else
  atomic_set(&rdev->read_errors, read_errors >> hours_since_last);
}
