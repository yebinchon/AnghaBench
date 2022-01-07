
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int EINVAL ;
 int dm_get_stats (struct mapped_device*) ;
 int dm_stats_set_aux (int ,int,char*) ;
 int sscanf (char*,char*,int*,char*) ;

__attribute__((used)) static int message_stats_set_aux(struct mapped_device *md,
     unsigned argc, char **argv)
{
 int id;
 char dummy;

 if (argc != 3)
  return -EINVAL;

 if (sscanf(argv[1], "%d%c", &id, &dummy) != 1 || id < 0)
  return -EINVAL;

 return dm_stats_set_aux(dm_get_stats(md), id, argv[2]);
}
