
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct atom_context {int io_attr; TYPE_1__* card; } ;
struct TYPE_3__ {int (* ioreg_read ) (TYPE_1__*,int ) ;int (* ioreg_write ) (TYPE_1__*,int ,int) ;} ;
 int CU16 (int) ;
 int CU8 (int) ;
 int pr_info (char*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ,int) ;

__attribute__((used)) static uint32_t atom_iio_execute(struct atom_context *ctx, int base,
     uint32_t index, uint32_t data)
{
 uint32_t temp = 0xCDCDCDCD;

 while (1)
  switch (CU8(base)) {
  case 131:
   base++;
   break;
  case 130:
   temp = ctx->card->ioreg_read(ctx->card, CU16(base + 1));
   base += 3;
   break;
  case 128:
   ctx->card->ioreg_write(ctx->card, CU16(base + 1), temp);
   base += 3;
   break;
  case 136:
   temp &=
       ~((0xFFFFFFFF >> (32 - CU8(base + 1))) <<
         CU8(base + 2));
   base += 3;
   break;
  case 129:
   temp |=
       (0xFFFFFFFF >> (32 - CU8(base + 1))) << CU8(base +
         2);
   base += 3;
   break;
  case 132:
   temp &=
       ~((0xFFFFFFFF >> (32 - CU8(base + 1))) <<
         CU8(base + 3));
   temp |=
       ((index >> CU8(base + 2)) &
        (0xFFFFFFFF >> (32 - CU8(base + 1)))) << CU8(base +
           3);
   base += 4;
   break;
  case 133:
   temp &=
       ~((0xFFFFFFFF >> (32 - CU8(base + 1))) <<
         CU8(base + 3));
   temp |=
       ((data >> CU8(base + 2)) &
        (0xFFFFFFFF >> (32 - CU8(base + 1)))) << CU8(base +
           3);
   base += 4;
   break;
  case 134:
   temp &=
       ~((0xFFFFFFFF >> (32 - CU8(base + 1))) <<
         CU8(base + 3));
   temp |=
       ((ctx->
         io_attr >> CU8(base + 2)) & (0xFFFFFFFF >> (32 -
           CU8
           (base
            +
            1))))
       << CU8(base + 3);
   base += 4;
   break;
  case 135:
   return temp;
  default:
   pr_info("Unknown IIO opcode\n");
   return 0;
  }
}
