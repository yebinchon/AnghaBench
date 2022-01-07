
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct picolcd_data {int dummy; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;



__attribute__((used)) static inline void picolcd_debug_raw_event(struct picolcd_data *data,
  struct hid_device *hdev, struct hid_report *report,
  u8 *raw_data, int size)
{
}
