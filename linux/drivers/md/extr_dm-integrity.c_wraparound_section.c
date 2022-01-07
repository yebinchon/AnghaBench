
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {unsigned int journal_sections; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void wraparound_section(struct dm_integrity_c *ic, unsigned *sec_ptr)
{
 if (unlikely(*sec_ptr >= ic->journal_sections))
  *sec_ptr -= ic->journal_sections;
}
