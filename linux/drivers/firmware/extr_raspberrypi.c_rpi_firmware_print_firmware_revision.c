
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tm {int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_2__ {int dev; } ;
struct rpi_firmware {TYPE_1__ cl; } ;
typedef int packet ;


 int RPI_FIRMWARE_GET_FIRMWARE_REVISION ;
 int dev_info (int ,char*,scalar_t__,scalar_t__,int ,int ,int ) ;
 int rpi_firmware_property (struct rpi_firmware*,int ,int *,int) ;
 int time64_to_tm (int ,int ,struct tm*) ;

__attribute__((used)) static void
rpi_firmware_print_firmware_revision(struct rpi_firmware *fw)
{
 u32 packet;
 int ret = rpi_firmware_property(fw,
     RPI_FIRMWARE_GET_FIRMWARE_REVISION,
     &packet, sizeof(packet));

 if (ret == 0) {
  struct tm tm;

  time64_to_tm(packet, 0, &tm);

  dev_info(fw->cl.dev,
    "Attached to firmware from %04ld-%02d-%02d %02d:%02d\n",
    tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
    tm.tm_hour, tm.tm_min);
 }
}
