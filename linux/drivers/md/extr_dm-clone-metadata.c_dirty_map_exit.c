
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_clone_metadata {TYPE_1__* dmap; } ;
struct TYPE_2__ {int dirty_words; } ;


 int kvfree (int ) ;

__attribute__((used)) static void dirty_map_exit(struct dm_clone_metadata *cmd)
{
 kvfree(cmd->dmap[0].dirty_words);
 kvfree(cmd->dmap[1].dirty_words);
}
