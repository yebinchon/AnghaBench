
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct clone* private; } ;
struct clone {int ios_in_flight; } ;
struct bio {int dummy; } ;
typedef int blk_status_t ;


 int DM_ENDIO_DONE ;
 int atomic_dec (int *) ;

__attribute__((used)) static int clone_endio(struct dm_target *ti, struct bio *bio, blk_status_t *error)
{
 struct clone *clone = ti->private;

 atomic_dec(&clone->ios_in_flight);

 return DM_ENDIO_DONE;
}
