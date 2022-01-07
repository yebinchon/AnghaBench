
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int release_firmware (struct firmware const*) ;

void
nvkm_firmware_put(const struct firmware *fw)
{
 release_firmware(fw);
}
