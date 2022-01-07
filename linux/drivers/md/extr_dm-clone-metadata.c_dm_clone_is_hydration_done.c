
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int hydration_done; } ;



bool dm_clone_is_hydration_done(struct dm_clone_metadata *cmd)
{
 return cmd->hydration_done;
}
