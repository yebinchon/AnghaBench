
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_device {int dummy; } ;


 char* strnstr (char*,char const*,unsigned int) ;

__attribute__((used)) static u8 *hidpp10_consumer_keys_report_fixup(struct hidpp_device *hidpp,
           u8 *_rdesc, unsigned int *rsize)
{

 static const char consumer_rdesc_start[] = {
  0x05, 0x0C,
  0x09, 0x01,
  0xA1, 0x01,
  0x85, 0x03,
  0x75, 0x10,
  0x95, 0x02,
  0x15, 0x01,
  0x26, 0x00
 };
 char *consumer_rdesc, *rdesc = (char *)_rdesc;
 unsigned int size;

 consumer_rdesc = strnstr(rdesc, consumer_rdesc_start, *rsize);
 size = *rsize - (consumer_rdesc - rdesc);
 if (consumer_rdesc && size >= 25) {
  consumer_rdesc[15] = 0x7f;
  consumer_rdesc[16] = 0x10;
  consumer_rdesc[20] = 0x7f;
  consumer_rdesc[21] = 0x10;
 }
 return _rdesc;
}
