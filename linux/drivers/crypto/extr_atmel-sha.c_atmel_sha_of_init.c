
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct crypto_platform_data {int dummy; } ;


 int EINVAL ;
 struct crypto_platform_data* ERR_PTR (int ) ;

__attribute__((used)) static inline struct crypto_platform_data *atmel_sha_of_init(struct platform_device *dev)
{
 return ERR_PTR(-EINVAL);
}
