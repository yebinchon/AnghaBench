
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int NVM_RSP_WARN_HIGHECC ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;

__attribute__((used)) static void pblk_end_user_read(struct bio *bio, int error)
{
 if (error && error != NVM_RSP_WARN_HIGHECC)
  bio_io_error(bio);
 else
  bio_endio(bio);
}
