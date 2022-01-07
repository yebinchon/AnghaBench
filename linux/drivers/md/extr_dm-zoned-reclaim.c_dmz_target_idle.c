
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {scalar_t__ atime; } ;


 scalar_t__ DMZ_IDLE_PERIOD ;
 int time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static inline int dmz_target_idle(struct dmz_reclaim *zrc)
{
 return time_is_before_jiffies(zrc->atime + DMZ_IDLE_PERIOD);
}
