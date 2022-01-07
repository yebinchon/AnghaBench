
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_writes_c {int super_done; } ;
struct bio {struct log_writes_c* bi_private; } ;


 int complete (int *) ;
 int log_end_io (struct bio*) ;

__attribute__((used)) static void log_end_super(struct bio *bio)
{
 struct log_writes_c *lc = bio->bi_private;

 complete(&lc->super_done);
 log_end_io(bio);
}
