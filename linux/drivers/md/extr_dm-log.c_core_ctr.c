
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dirty_log {int dummy; } ;


 int create_log_context (struct dm_dirty_log*,struct dm_target*,unsigned int,char**,int *) ;

__attribute__((used)) static int core_ctr(struct dm_dirty_log *log, struct dm_target *ti,
      unsigned int argc, char **argv)
{
 return create_log_context(log, ti, argc, argv, ((void*)0));
}
