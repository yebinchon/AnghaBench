
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pmd; } ;


 int DMWARN (char*) ;
 int check_arg_count (unsigned int,int) ;
 int dm_pool_release_metadata_snap (int ) ;

__attribute__((used)) static int process_release_metadata_snap_mesg(unsigned argc, char **argv, struct pool *pool)
{
 int r;

 r = check_arg_count(argc, 1);
 if (r)
  return r;

 r = dm_pool_release_metadata_snap(pool->pmd);
 if (r)
  DMWARN("release_metadata_snap message failed.");

 return r;
}
