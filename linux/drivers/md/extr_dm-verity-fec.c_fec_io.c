
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_io {int v; } ;
struct dm_verity_fec_io {int dummy; } ;


 scalar_t__ verity_io_digest_end (int ,struct dm_verity_io*) ;

__attribute__((used)) static inline struct dm_verity_fec_io *fec_io(struct dm_verity_io *io)
{
 return (struct dm_verity_fec_io *) verity_io_digest_end(io->v, io);
}
