
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {scalar_t__ claimed; } ;



__attribute__((used)) static void i2c_hid_stop(struct hid_device *hid)
{
 hid->claimed = 0;
}
