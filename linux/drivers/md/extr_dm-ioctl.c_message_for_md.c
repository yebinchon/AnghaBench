
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int DMERR (char*,...) ;
 int EINVAL ;
 int dm_cancel_deferred_remove (struct mapped_device*) ;
 int dm_stats_message (struct mapped_device*,unsigned int,char**,char*,unsigned int) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int message_for_md(struct mapped_device *md, unsigned argc, char **argv,
     char *result, unsigned maxlen)
{
 int r;

 if (**argv != '@')
  return 2;

 if (!strcasecmp(argv[0], "@cancel_deferred_remove")) {
  if (argc != 1) {
   DMERR("Invalid arguments for @cancel_deferred_remove");
   return -EINVAL;
  }
  return dm_cancel_deferred_remove(md);
 }

 r = dm_stats_message(md, argc, argv, result, maxlen);
 if (r < 2)
  return r;

 DMERR("Unsupported message sent to DM core: %s", argv[0]);
 return -EINVAL;
}
