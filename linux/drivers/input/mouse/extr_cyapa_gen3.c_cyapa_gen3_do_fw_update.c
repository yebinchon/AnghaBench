
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int * data; } ;
struct device {int dummy; } ;
struct cyapa {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;


 size_t CYAPA_FW_BLOCK_SIZE ;
 size_t CYAPA_FW_DATA_BLOCK_COUNT ;
 int CYAPA_FW_DATA_BLOCK_START ;
 size_t CYAPA_FW_HDR_BLOCK_COUNT ;
 int CYAPA_FW_HDR_BLOCK_START ;
 int cyapa_gen3_write_blocks (struct cyapa*,int ,size_t,int *) ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int cyapa_gen3_do_fw_update(struct cyapa *cyapa,
  const struct firmware *fw)
{
 struct device *dev = &cyapa->client->dev;
 int error;


 error = cyapa_gen3_write_blocks(cyapa,
  CYAPA_FW_DATA_BLOCK_START, CYAPA_FW_DATA_BLOCK_COUNT,
  &fw->data[CYAPA_FW_HDR_BLOCK_COUNT * CYAPA_FW_BLOCK_SIZE]);
 if (error) {
  dev_err(dev, "FW update aborted, write image: %d\n", error);
  return error;
 }


 error = cyapa_gen3_write_blocks(cyapa,
  CYAPA_FW_HDR_BLOCK_START, CYAPA_FW_HDR_BLOCK_COUNT,
  &fw->data[0]);
 if (error) {
  dev_err(dev, "FW update aborted, write checksum: %d\n", error);
  return error;
 }

 return 0;
}
