
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int private; } ;


 int era_destroy (int ) ;

__attribute__((used)) static void era_dtr(struct dm_target *ti)
{
 era_destroy(ti->private);
}
