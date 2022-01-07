
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int count; int error_bits; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete_io (struct io*) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static void dec_count(struct io *io, unsigned int region, blk_status_t error)
{
 if (error)
  set_bit(region, &io->error_bits);

 if (atomic_dec_and_test(&io->count))
  complete_io(io);
}
