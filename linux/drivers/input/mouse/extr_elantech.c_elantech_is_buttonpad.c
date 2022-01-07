
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elantech_device_info {int fw_version; } ;



__attribute__((used)) static inline int elantech_is_buttonpad(struct elantech_device_info *info)
{
 return info->fw_version & 0x001000;
}
