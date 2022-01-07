
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int EINVAL ;
 unsigned long ULONG_MAX ;
 int dm_get_stats (struct mapped_device*) ;
 int dm_stats_print (int ,int,unsigned long,unsigned long,int,char*,unsigned int) ;
 int sscanf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int message_stats_print(struct mapped_device *md,
          unsigned argc, char **argv, bool clear,
          char *result, unsigned maxlen)
{
 int id;
 char dummy;
 unsigned long idx_start = 0, idx_len = ULONG_MAX;

 if (argc != 2 && argc != 4)
  return -EINVAL;

 if (sscanf(argv[1], "%d%c", &id, &dummy) != 1 || id < 0)
  return -EINVAL;

 if (argc > 3) {
  if (strcmp(argv[2], "-") &&
      sscanf(argv[2], "%lu%c", &idx_start, &dummy) != 1)
   return -EINVAL;
  if (strcmp(argv[3], "-") &&
      sscanf(argv[3], "%lu%c", &idx_len, &dummy) != 1)
   return -EINVAL;
 }

 return dm_stats_print(dm_get_stats(md), id, idx_start, idx_len, clear,
         result, maxlen);
}
