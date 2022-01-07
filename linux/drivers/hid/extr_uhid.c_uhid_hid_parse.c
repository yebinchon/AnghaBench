
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_device {int rd_size; int rd_data; } ;
struct hid_device {struct uhid_device* driver_data; } ;


 int hid_parse_report (struct hid_device*,int ,int ) ;

__attribute__((used)) static int uhid_hid_parse(struct hid_device *hid)
{
 struct uhid_device *uhid = hid->driver_data;

 return hid_parse_report(hid, uhid->rd_data, uhid->rd_size);
}
