
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int DMWARN (char*,char*) ;
 int EINVAL ;
 int message_stats_clear (struct mapped_device*,unsigned int,char**) ;
 int message_stats_create (struct mapped_device*,unsigned int,char**,char*,unsigned int) ;
 int message_stats_delete (struct mapped_device*,unsigned int,char**) ;
 int message_stats_list (struct mapped_device*,unsigned int,char**,char*,unsigned int) ;
 int message_stats_print (struct mapped_device*,unsigned int,char**,int,char*,unsigned int) ;
 int message_stats_set_aux (struct mapped_device*,unsigned int,char**) ;
 int strcasecmp (char*,char*) ;

int dm_stats_message(struct mapped_device *md, unsigned argc, char **argv,
       char *result, unsigned maxlen)
{
 int r;


 if (!strcasecmp(argv[0], "@stats_create"))
  r = message_stats_create(md, argc, argv, result, maxlen);
 else if (!strcasecmp(argv[0], "@stats_delete"))
  r = message_stats_delete(md, argc, argv);
 else if (!strcasecmp(argv[0], "@stats_clear"))
  r = message_stats_clear(md, argc, argv);
 else if (!strcasecmp(argv[0], "@stats_list"))
  r = message_stats_list(md, argc, argv, result, maxlen);
 else if (!strcasecmp(argv[0], "@stats_print"))
  r = message_stats_print(md, argc, argv, 0, result, maxlen);
 else if (!strcasecmp(argv[0], "@stats_print_clear"))
  r = message_stats_print(md, argc, argv, 1, result, maxlen);
 else if (!strcasecmp(argv[0], "@stats_set_aux"))
  r = message_stats_set_aux(md, argc, argv);
 else
  return 2;

 if (r == -EINVAL)
  DMWARN("Invalid parameters for message %s", argv[0]);

 return r;
}
