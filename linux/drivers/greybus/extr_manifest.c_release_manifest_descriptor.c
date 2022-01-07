
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manifest_desc {int links; } ;


 int kfree (struct manifest_desc*) ;
 int list_del (int *) ;

__attribute__((used)) static void release_manifest_descriptor(struct manifest_desc *descriptor)
{
 list_del(&descriptor->links);
 kfree(descriptor);
}
