
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int dummy; } ;


 int metadata_era_rollover (struct era_metadata*) ;

__attribute__((used)) static int metadata_checkpoint(struct era_metadata *md)
{




 return metadata_era_rollover(md);
}
