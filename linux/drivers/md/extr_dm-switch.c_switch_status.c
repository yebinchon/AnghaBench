
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_ctx {int nr_paths; unsigned long long region_size; TYPE_2__* path_list; } ;
struct dm_target {struct switch_ctx* private; } ;
typedef int status_type_t ;
struct TYPE_4__ {scalar_t__ start; TYPE_1__* dmdev; } ;
struct TYPE_3__ {int name; } ;


 int DMEMIT (char*,int,unsigned long long) ;



__attribute__((used)) static void switch_status(struct dm_target *ti, status_type_t type,
     unsigned status_flags, char *result, unsigned maxlen)
{
 struct switch_ctx *sctx = ti->private;
 unsigned sz = 0;
 int path_nr;

 switch (type) {
 case 129:
  result[0] = '\0';
  break;

 case 128:
  DMEMIT("%u %u 0", sctx->nr_paths, sctx->region_size);
  for (path_nr = 0; path_nr < sctx->nr_paths; path_nr++)
   DMEMIT(" %s %llu", sctx->path_list[path_nr].dmdev->name,
          (unsigned long long)sctx->path_list[path_nr].start);
  break;
 }
}
