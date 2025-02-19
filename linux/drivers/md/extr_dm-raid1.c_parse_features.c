
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int features; struct dm_target* ti; } ;
struct dm_target {char* error; } ;


 int DM_RAID1_HANDLE_ERRORS ;
 int DM_RAID1_KEEP_LOG ;
 int EINVAL ;
 int errors_handled (struct mirror_set*) ;
 scalar_t__ keep_log (struct mirror_set*) ;
 int sscanf (char*,char*,unsigned int*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int parse_features(struct mirror_set *ms, unsigned argc, char **argv,
     unsigned *args_used)
{
 unsigned num_features;
 struct dm_target *ti = ms->ti;
 char dummy;
 int i;

 *args_used = 0;

 if (!argc)
  return 0;

 if (sscanf(argv[0], "%u%c", &num_features, &dummy) != 1) {
  ti->error = "Invalid number of features";
  return -EINVAL;
 }

 argc--;
 argv++;
 (*args_used)++;

 if (num_features > argc) {
  ti->error = "Not enough arguments to support feature count";
  return -EINVAL;
 }

 for (i = 0; i < num_features; i++) {
  if (!strcmp("handle_errors", argv[0]))
   ms->features |= DM_RAID1_HANDLE_ERRORS;
  else if (!strcmp("keep_log", argv[0]))
   ms->features |= DM_RAID1_KEEP_LOG;
  else {
   ti->error = "Unrecognised feature requested";
   return -EINVAL;
  }

  argc--;
  argv++;
  (*args_used)++;
 }
 if (!errors_handled(ms) && keep_log(ms)) {
  ti->error = "keep_log feature requires the handle_errors feature";
  return -EINVAL;
 }

 return 0;
}
