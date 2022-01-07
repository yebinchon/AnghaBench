
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_ctx {int dummy; } ;
struct dm_target {struct switch_ctx* private; } ;
typedef int DEFINE_MUTEX ;


 int DMWARN (char*) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_set_region_mappings (struct switch_ctx*,unsigned int,char**) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int switch_message(struct dm_target *ti, unsigned argc, char **argv,
     char *result, unsigned maxlen)
{
 static DEFINE_MUTEX(message_mutex);

 struct switch_ctx *sctx = ti->private;
 int r = -EINVAL;

 mutex_lock(&message_mutex);

 if (!strcasecmp(argv[0], "set_region_mappings"))
  r = process_set_region_mappings(sctx, argc, argv);
 else
  DMWARN("Unrecognised message received.");

 mutex_unlock(&message_mutex);

 return r;
}
