
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct pms7003_frame {int length; scalar_t__* data; } ;


 int PMS7003_CHECKSUM_LENGTH ;
 int PMS7003_MAGIC ;

__attribute__((used)) static u16 pms7003_calc_checksum(struct pms7003_frame *frame)
{
 u16 checksum = (PMS7003_MAGIC >> 8) + (u8)(PMS7003_MAGIC & 0xff) +
         (frame->length >> 8) + (u8)frame->length;
 int i;

 for (i = 0; i < frame->length - PMS7003_CHECKSUM_LENGTH; i++)
  checksum += frame->data[i];

 return checksum;
}
