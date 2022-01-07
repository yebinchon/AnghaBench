
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crypt_io {int io_pending; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void crypt_inc_pending(struct dm_crypt_io *io)
{
 atomic_inc(&io->io_pending);
}
