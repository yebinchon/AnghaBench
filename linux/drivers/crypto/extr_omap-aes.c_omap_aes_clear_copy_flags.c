
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int flags; } ;


 int FLAGS_ASSOC_DATA_ST_SHIFT ;
 int FLAGS_IN_DATA_ST_SHIFT ;
 int FLAGS_OUT_DATA_ST_SHIFT ;
 int OMAP_CRYPTO_COPY_MASK ;

void omap_aes_clear_copy_flags(struct omap_aes_dev *dd)
{
 dd->flags &= ~(OMAP_CRYPTO_COPY_MASK << FLAGS_IN_DATA_ST_SHIFT);
 dd->flags &= ~(OMAP_CRYPTO_COPY_MASK << FLAGS_OUT_DATA_ST_SHIFT);
 dd->flags &= ~(OMAP_CRYPTO_COPY_MASK << FLAGS_ASSOC_DATA_ST_SHIFT);
}
