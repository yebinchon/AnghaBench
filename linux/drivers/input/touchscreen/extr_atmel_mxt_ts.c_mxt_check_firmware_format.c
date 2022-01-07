
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {unsigned int size; char* data; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int mxt_check_firmware_format(struct device *dev,
         const struct firmware *fw)
{
 unsigned int pos = 0;
 char c;

 while (pos < fw->size) {
  c = *(fw->data + pos);

  if (c < '0' || (c > '9' && c < 'A') || c > 'F')
   return 0;

  pos++;
 }





 dev_err(dev, "Aborting: firmware file must be in binary format\n");

 return -EINVAL;
}
