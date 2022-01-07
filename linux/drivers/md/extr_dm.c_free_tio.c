
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target_io {int clone; scalar_t__ inside_dm_io; } ;


 int bio_put (int *) ;

__attribute__((used)) static void free_tio(struct dm_target_io *tio)
{
 if (tio->inside_dm_io)
  return;
 bio_put(&tio->clone);
}
