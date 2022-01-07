
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_details {int fw; } ;


 int memset (struct firmware_details*,int ,int) ;
 int release_firmware (int ) ;

__attribute__((used)) static void dispose_one_firmware(struct firmware_details *fdet)
{
 release_firmware(fdet->fw);

 memset(fdet, 0, sizeof(*fdet));
}
