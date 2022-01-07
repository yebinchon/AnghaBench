
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto {int pending_count; } ;


 int artpec6_crypto_dev ;
 struct artpec6_crypto* dev_get_drvdata (int ) ;

__attribute__((used)) static inline bool artpec6_crypto_busy(void)
{
 struct artpec6_crypto *ac = dev_get_drvdata(artpec6_crypto_dev);
 int fifo_count = ac->pending_count;

 return fifo_count > 6;
}
