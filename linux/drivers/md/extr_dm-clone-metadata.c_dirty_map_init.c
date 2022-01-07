
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_clone_metadata {TYPE_1__* dmap; TYPE_1__* current_dmap; int nr_words; } ;
struct TYPE_2__ {void* dirty_words; scalar_t__ changed; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_size (int ) ;
 int kvfree (void*) ;
 void* kvzalloc (int ,int ) ;

__attribute__((used)) static int dirty_map_init(struct dm_clone_metadata *cmd)
{
 cmd->dmap[0].changed = 0;
 cmd->dmap[0].dirty_words = kvzalloc(bitmap_size(cmd->nr_words), GFP_KERNEL);

 if (!cmd->dmap[0].dirty_words) {
  DMERR("Failed to allocate dirty bitmap");
  return -ENOMEM;
 }

 cmd->dmap[1].changed = 0;
 cmd->dmap[1].dirty_words = kvzalloc(bitmap_size(cmd->nr_words), GFP_KERNEL);

 if (!cmd->dmap[1].dirty_words) {
  DMERR("Failed to allocate dirty bitmap");
  kvfree(cmd->dmap[0].dirty_words);
  return -ENOMEM;
 }

 cmd->current_dmap = &cmd->dmap[0];

 return 0;
}
