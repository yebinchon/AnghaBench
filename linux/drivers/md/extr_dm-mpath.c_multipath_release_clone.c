
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union map_info {int dummy; } map_info ;
struct request {int dummy; } ;
struct pgpath {int path; TYPE_1__* pg; } ;
struct dm_mpath_io {int nr_bytes; struct pgpath* pgpath; } ;
struct TYPE_6__ {TYPE_2__* type; } ;
struct TYPE_5__ {int (* end_io ) (TYPE_3__*,int *,int ) ;} ;
struct TYPE_4__ {TYPE_3__ ps; } ;


 int blk_put_request (struct request*) ;
 struct dm_mpath_io* get_mpio (union map_info*) ;
 int stub1 (TYPE_3__*,int *,int ) ;
 scalar_t__ unlikely (union map_info*) ;

__attribute__((used)) static void multipath_release_clone(struct request *clone,
        union map_info *map_context)
{
 if (unlikely(map_context)) {




  struct dm_mpath_io *mpio = get_mpio(map_context);
  struct pgpath *pgpath = mpio->pgpath;

  if (pgpath && pgpath->pg->ps.type->end_io)
   pgpath->pg->ps.type->end_io(&pgpath->pg->ps,
          &pgpath->path,
          mpio->nr_bytes);
 }

 blk_put_request(clone);
}
