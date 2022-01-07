
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct creative_sb0540 {int input_dev; } ;


 int KEY_RESERVED ;
 int get_key (struct creative_sb0540*,int) ;
 int hid_err (struct hid_device*,char*,int) ;
 struct creative_sb0540* hid_get_drvdata (struct hid_device*) ;
 int input_report_key (int ,int,int) ;
 int input_sync (int ) ;
 int reverse (int ,int) ;

__attribute__((used)) static int creative_sb0540_raw_event(struct hid_device *hid,
 struct hid_report *report, u8 *data, int len)
{
 struct creative_sb0540 *creative_sb0540 = hid_get_drvdata(hid);
 u64 code, main_code;
 int key;

 if (len != 6)
  return 0;


 code = reverse(data[5], 8);
 main_code = (code << 8) + ((~code) & 0xff);





 main_code = ((main_code & 0xff) << 8) +
  ((main_code & 0xff00) >> 8);

 key = get_key(creative_sb0540, main_code);
 if (key == 0 || key == KEY_RESERVED) {
  hid_err(hid, "Could not get a key for main_code %llX\n",
   main_code);
  return 0;
 }

 input_report_key(creative_sb0540->input_dev, key, 1);
 input_report_key(creative_sb0540->input_dev, key, 0);
 input_sync(creative_sb0540->input_dev);


 return 0;
}
