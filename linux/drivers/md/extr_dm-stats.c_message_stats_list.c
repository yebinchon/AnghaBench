
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dm_get_stats (struct mapped_device*) ;
 int dm_stats_list (int ,char const*,char*,unsigned int) ;
 int kfree (char const*) ;
 char* kstrdup (char*,int ) ;

__attribute__((used)) static int message_stats_list(struct mapped_device *md,
         unsigned argc, char **argv,
         char *result, unsigned maxlen)
{
 int r;
 const char *program = ((void*)0);

 if (argc < 1 || argc > 2)
  return -EINVAL;

 if (argc > 1) {
  program = kstrdup(argv[1], GFP_KERNEL);
  if (!program)
   return -ENOMEM;
 }

 r = dm_stats_list(dm_get_stats(md), program, result, maxlen);

 kfree(program);

 return r;
}
