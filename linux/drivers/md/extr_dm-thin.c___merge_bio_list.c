
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;


 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;

__attribute__((used)) static void __merge_bio_list(struct bio_list *bios, struct bio_list *master)
{
 bio_list_merge(bios, master);
 bio_list_init(master);
}
