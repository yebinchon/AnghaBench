
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int * bio_in_progress; int * bio_in_progress_wait; } ;


 int atomic_read (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void writecache_wait_for_ios(struct dm_writecache *wc, int direction)
{
 wait_event(wc->bio_in_progress_wait[direction],
     !atomic_read(&wc->bio_in_progress[direction]));
}
