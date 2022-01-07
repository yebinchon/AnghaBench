
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_delay_info {unsigned long expires; int list; struct delay_c* context; } ;
struct delay_class {int ops; int delay; } ;
struct delay_c {int delayed_bios; int may_delay; } ;
struct bio {int dummy; } ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int atomic_read (int *) ;
 int delayed_bios_lock ;
 struct dm_delay_info* dm_per_bio_data (struct bio*,int) ;
 unsigned long jiffies ;
 int list_add_tail (int *,int *) ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_timeout (struct delay_c*,unsigned long) ;

__attribute__((used)) static int delay_bio(struct delay_c *dc, struct delay_class *c, struct bio *bio)
{
 struct dm_delay_info *delayed;
 unsigned long expires = 0;

 if (!c->delay || !atomic_read(&dc->may_delay))
  return DM_MAPIO_REMAPPED;

 delayed = dm_per_bio_data(bio, sizeof(struct dm_delay_info));

 delayed->context = dc;
 delayed->expires = expires = jiffies + msecs_to_jiffies(c->delay);

 mutex_lock(&delayed_bios_lock);
 c->ops++;
 list_add_tail(&delayed->list, &dc->delayed_bios);
 mutex_unlock(&delayed_bios_lock);

 queue_timeout(dc, expires);

 return DM_MAPIO_SUBMITTED;
}
