
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int dummy; } ;
struct hid_device {int dummy; } ;


 int REPORT_BL_READ_MEMORY ;
 int REPORT_BL_WRITE_MEMORY ;
 int picolcd_init_devfs (struct picolcd_data*,int *,int *,int ,int ,int *) ;
 int picolcd_out_report (int ,struct hid_device*) ;

__attribute__((used)) static int picolcd_probe_bootloader(struct hid_device *hdev, struct picolcd_data *data)
{
 picolcd_init_devfs(data, ((void*)0), ((void*)0),
   picolcd_out_report(REPORT_BL_READ_MEMORY, hdev),
   picolcd_out_report(REPORT_BL_WRITE_MEMORY, hdev), ((void*)0));
 return 0;
}
