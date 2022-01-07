
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int wait; } ;


 int dm_put (struct mapped_device*) ;
 scalar_t__ unlikely (int ) ;
 int wake_up (int *) ;
 int wq_has_sleeper (int *) ;

__attribute__((used)) static void rq_completed(struct mapped_device *md)
{

 if (unlikely(wq_has_sleeper(&md->wait)))
  wake_up(&md->wait);




 dm_put(md);
}
