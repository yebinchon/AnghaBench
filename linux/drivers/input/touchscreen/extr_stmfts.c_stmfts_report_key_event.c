
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmfts_data {int input; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int KEY_BACK ;
 int KEY_MENU ;


 int dev_warn (int *,char*,int const) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void stmfts_report_key_event(struct stmfts_data *sdata, const u8 event[])
{
 switch (event[2]) {
 case 0:
  input_report_key(sdata->input, KEY_BACK, 0);
  input_report_key(sdata->input, KEY_MENU, 0);
  break;

 case 129:
  input_report_key(sdata->input, KEY_BACK, 1);
  break;

 case 128:
  input_report_key(sdata->input, KEY_MENU, 1);
  break;

 default:
  dev_warn(&sdata->client->dev,
    "unknown key event: %#02x\n", event[2]);
  break;
 }

 input_sync(sdata->input);
}
