
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int READ_WRITE_LOCK_LEVEL ;
 scalar_t__ WRITE ;
 int WRITE_LOCK_LEVEL ;
 scalar_t__ bio_data_dir (struct bio*) ;

__attribute__((used)) static unsigned lock_level(struct bio *bio)
{
 return bio_data_dir(bio) == WRITE ?
  WRITE_LOCK_LEVEL :
  READ_WRITE_LOCK_LEVEL;
}
