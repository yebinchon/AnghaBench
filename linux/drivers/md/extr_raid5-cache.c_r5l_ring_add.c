
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {scalar_t__ device_size; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static sector_t r5l_ring_add(struct r5l_log *log, sector_t start, sector_t inc)
{
 start += inc;
 if (start >= log->device_size)
  start = start - log->device_size;
 return start;
}
