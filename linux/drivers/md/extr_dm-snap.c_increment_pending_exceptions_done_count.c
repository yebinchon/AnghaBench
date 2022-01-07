
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pending_exceptions_done ;
 int _pending_exceptions_done_count ;
 int _pending_exceptions_done_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void increment_pending_exceptions_done_count(void)
{
 spin_lock(&_pending_exceptions_done_spinlock);
 _pending_exceptions_done_count++;
 spin_unlock(&_pending_exceptions_done_spinlock);

 wake_up_all(&_pending_exceptions_done);
}
