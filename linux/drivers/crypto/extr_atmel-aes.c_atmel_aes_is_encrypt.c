
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int flags; } ;


 int AES_FLAGS_ENCRYPT ;

__attribute__((used)) static inline bool atmel_aes_is_encrypt(const struct atmel_aes_dev *dd)
{
 return (dd->flags & AES_FLAGS_ENCRYPT);
}
