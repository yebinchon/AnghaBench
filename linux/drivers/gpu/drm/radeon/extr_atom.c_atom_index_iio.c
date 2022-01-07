
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atom_context {int* iio; } ;


 size_t ATOM_IIO_END ;
 size_t ATOM_IIO_START ;
 size_t CU8 (int) ;
 int GFP_KERNEL ;
 scalar_t__* atom_iio_len ;
 int* kzalloc (int,int ) ;

__attribute__((used)) static void atom_index_iio(struct atom_context *ctx, int base)
{
 ctx->iio = kzalloc(2 * 256, GFP_KERNEL);
 if (!ctx->iio)
  return;
 while (CU8(base) == ATOM_IIO_START) {
  ctx->iio[CU8(base + 1)] = base + 2;
  base += 2;
  while (CU8(base) != ATOM_IIO_END)
   base += atom_iio_len[CU8(base)];
  base += 3;
 }
}
