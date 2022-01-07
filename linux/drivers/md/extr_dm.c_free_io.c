
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct TYPE_2__ {int clone; } ;
struct dm_io {TYPE_1__ tio; } ;


 int bio_put (int *) ;

__attribute__((used)) static void free_io(struct mapped_device *md, struct dm_io *io)
{
 bio_put(&io->tio.clone);
}
