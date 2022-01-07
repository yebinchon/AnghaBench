
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int validate_nr_regions(unsigned long n, char **error)
{




 if (n > (1UL << 31)) {
  *error = "Too many regions. Consider increasing the region size";
  return -EINVAL;
 }

 return 0;
}
