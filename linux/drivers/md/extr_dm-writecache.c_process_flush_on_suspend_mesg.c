
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int flush_on_suspend; } ;


 int EINVAL ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;

__attribute__((used)) static int process_flush_on_suspend_mesg(unsigned argc, char **argv, struct dm_writecache *wc)
{
 if (argc != 1)
  return -EINVAL;

 wc_lock(wc);
 wc->flush_on_suspend = 1;
 wc_unlock(wc);

 return 0;
}
