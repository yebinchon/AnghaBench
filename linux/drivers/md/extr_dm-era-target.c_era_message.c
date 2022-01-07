
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int dummy; } ;
struct dm_target {struct era* private; } ;


 int DMERR (char*,...) ;
 int EINVAL ;
 int in_worker0 (struct era*,int ) ;
 int metadata_checkpoint ;
 int metadata_drop_snap ;
 int metadata_take_snap ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int era_message(struct dm_target *ti, unsigned argc, char **argv,
         char *result, unsigned maxlen)
{
 struct era *era = ti->private;

 if (argc != 1) {
  DMERR("incorrect number of message arguments");
  return -EINVAL;
 }

 if (!strcasecmp(argv[0], "checkpoint"))
  return in_worker0(era, metadata_checkpoint);

 if (!strcasecmp(argv[0], "take_metadata_snap"))
  return in_worker0(era, metadata_take_snap);

 if (!strcasecmp(argv[0], "drop_metadata_snap"))
  return in_worker0(era, metadata_drop_snap);

 DMERR("unsupported message '%s'", argv[0]);
 return -EINVAL;
}
