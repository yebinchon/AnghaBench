
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int req; } ;


 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 int atmel_sha_copy_hash (int ) ;
 int atmel_sha_copy_ready_hash (int ) ;

__attribute__((used)) static int atmel_sha_hmac_final_done(struct atmel_sha_dev *dd)
{





 atmel_sha_copy_hash(dd->req);
 atmel_sha_copy_ready_hash(dd->req);
 return atmel_sha_complete(dd, 0);
}
