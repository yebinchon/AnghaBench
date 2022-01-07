
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int dummy; } ;


 int SHA_HW_VERSION ;
 int atmel_sha_read (struct atmel_sha_dev*,int ) ;

__attribute__((used)) static inline unsigned int atmel_sha_get_version(struct atmel_sha_dev *dd)
{
 return atmel_sha_read(dd, SHA_HW_VERSION) & 0x00000fff;
}
