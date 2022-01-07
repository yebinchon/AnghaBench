
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct firmware {int* data; int size; } ;
struct device {int dummy; } ;
struct cyapa {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;


 int CYAPA_FW_DATA_SIZE ;
 int CYAPA_FW_HDR_SIZE ;
 int CYAPA_FW_SIZE ;
 int EINVAL ;
 int cyapa_gen3_csum (int*,int) ;
 int dev_err (struct device*,char*,char*,int,...) ;

__attribute__((used)) static int cyapa_gen3_check_fw(struct cyapa *cyapa, const struct firmware *fw)
{
 struct device *dev = &cyapa->client->dev;
 u16 csum;
 u16 csum_expected;


 if (fw->size != CYAPA_FW_SIZE) {
  dev_err(dev, "invalid firmware size = %zu, expected %u.\n",
   fw->size, CYAPA_FW_SIZE);
  return -EINVAL;
 }


 csum_expected = (fw->data[0] << 8) | fw->data[1];
 csum = cyapa_gen3_csum(&fw->data[2], CYAPA_FW_HDR_SIZE - 2);
 if (csum != csum_expected) {
  dev_err(dev, "%s %04x, expected: %04x\n",
   "invalid firmware header checksum = ",
   csum, csum_expected);
  return -EINVAL;
 }


 csum_expected = (fw->data[CYAPA_FW_HDR_SIZE - 2] << 8) |
    fw->data[CYAPA_FW_HDR_SIZE - 1];
 csum = cyapa_gen3_csum(&fw->data[CYAPA_FW_HDR_SIZE],
   CYAPA_FW_DATA_SIZE);
 if (csum != csum_expected) {
  dev_err(dev, "%s %04x, expected: %04x\n",
   "invalid firmware header checksum = ",
   csum, csum_expected);
  return -EINVAL;
 }
 return 0;
}
