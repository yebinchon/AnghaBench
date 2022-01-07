
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int * zones; } ;


 int kfree (int *) ;

__attribute__((used)) static void dmz_drop_zones(struct dmz_metadata *zmd)
{
 kfree(zmd->zones);
 zmd->zones = ((void*)0);
}
