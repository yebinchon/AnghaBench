
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_new_mapping {int bio; } ;


 int bio_io_error (int ) ;
 int free_discard_mapping (struct dm_thin_new_mapping*) ;

__attribute__((used)) static void process_prepared_discard_fail(struct dm_thin_new_mapping *m)
{
 bio_io_error(m->bio);
 free_discard_mapping(m);
}
