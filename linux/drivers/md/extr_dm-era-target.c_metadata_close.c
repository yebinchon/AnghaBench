
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int dummy; } ;


 int destroy_persistent_data_objects (struct era_metadata*) ;
 int kfree (struct era_metadata*) ;

__attribute__((used)) static void metadata_close(struct era_metadata *md)
{
 destroy_persistent_data_objects(md);
 kfree(md);
}
