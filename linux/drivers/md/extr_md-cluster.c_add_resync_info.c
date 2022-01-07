
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resync_info {void* hi; void* lo; } ;
struct TYPE_2__ {scalar_t__ sb_lvbptr; } ;
struct dlm_lock_resource {TYPE_1__ lksb; } ;
typedef int sector_t ;


 void* cpu_to_le64 (int ) ;

__attribute__((used)) static void add_resync_info(struct dlm_lock_resource *lockres,
       sector_t lo, sector_t hi)
{
 struct resync_info *ri;

 ri = (struct resync_info *)lockres->lksb.sb_lvbptr;
 ri->lo = cpu_to_le64(lo);
 ri->hi = cpu_to_le64(hi);
}
