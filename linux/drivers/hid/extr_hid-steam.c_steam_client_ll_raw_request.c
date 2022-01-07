
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct steam_device {int hdev; } ;
struct hid_device {struct steam_device* driver_data; } ;


 int hid_hw_raw_request (int ,unsigned char,int *,size_t,unsigned char,int) ;

__attribute__((used)) static int steam_client_ll_raw_request(struct hid_device *hdev,
    unsigned char reportnum, u8 *buf,
    size_t count, unsigned char report_type,
    int reqtype)
{
 struct steam_device *steam = hdev->driver_data;

 return hid_hw_raw_request(steam->hdev, reportnum, buf, count,
   report_type, reqtype);
}
