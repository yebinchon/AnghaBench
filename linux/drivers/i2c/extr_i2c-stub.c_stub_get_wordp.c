
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct stub_chip {int bank_sel; scalar_t__ bank_start; scalar_t__ bank_end; scalar_t__ bank_words; int bank_size; int * words; } ;



__attribute__((used)) static u16 *stub_get_wordp(struct stub_chip *chip, u8 offset)
{
 if (chip->bank_sel &&
     offset >= chip->bank_start && offset <= chip->bank_end)
  return chip->bank_words +
         (chip->bank_sel - 1) * chip->bank_size +
         offset - chip->bank_start;
 else
  return chip->words + offset;
}
