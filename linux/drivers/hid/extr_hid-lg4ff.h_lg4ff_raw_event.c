
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lg_drv_data {int dummy; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;



__attribute__((used)) static inline int lg4ff_raw_event(struct hid_device *hdev, struct hid_report *report,
  u8 *rd, int size, struct lg_drv_data *drv_data) { return 0; }
