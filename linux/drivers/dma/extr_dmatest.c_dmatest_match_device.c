
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_params {char* device; } ;
struct dma_device {int dev; } ;


 int dev_name (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool dmatest_match_device(struct dmatest_params *params,
  struct dma_device *device)
{
 if (params->device[0] == '\0')
  return 1;
 return strcmp(dev_name(device->dev), params->device) == 0;
}
