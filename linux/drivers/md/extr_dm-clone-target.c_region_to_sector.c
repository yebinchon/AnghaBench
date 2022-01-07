
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {unsigned long region_shift; } ;
typedef unsigned long sector_t ;



__attribute__((used)) static inline sector_t region_to_sector(struct clone *clone, unsigned long region_nr)
{
 return (region_nr << clone->region_shift);
}
