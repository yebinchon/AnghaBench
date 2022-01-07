
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALGORITHM_RAID10_FAR ;
 int ALGORITHM_RAID10_NEAR ;
 int ALGORITHM_RAID10_OFFSET ;
 int EINVAL ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int raid10_name_to_format(const char *name)
{
 if (!strcasecmp(name, "near"))
  return ALGORITHM_RAID10_NEAR;
 else if (!strcasecmp(name, "offset"))
  return ALGORITHM_RAID10_OFFSET;
 else if (!strcasecmp(name, "far"))
  return ALGORITHM_RAID10_FAR;

 return -EINVAL;
}
