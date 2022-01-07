
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {scalar_t__ device_size; int log_start; int last_checkpoint; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ r5l_ring_distance (struct r5l_log*,int ,int ) ;

__attribute__((used)) static bool r5l_has_free_space(struct r5l_log *log, sector_t size)
{
 sector_t used_size;

 used_size = r5l_ring_distance(log, log->last_checkpoint,
     log->log_start);

 return log->device_size > used_size + size;
}
