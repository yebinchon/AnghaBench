
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmfts_data {int* data; TYPE_1__* client; int cmd_done; } ;
struct TYPE_2__ {int dev; } ;


 int STMFTS_EVENT_SIZE ;
 int STMFTS_MASK_EVENT_ID ;
 int STMFTS_STACK_DEPTH ;
 int complete (int *) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int,int,int,int,int,int) ;
 int stmfts_report_contact_event (struct stmfts_data*,int*) ;
 int stmfts_report_contact_release (struct stmfts_data*,int*) ;
 int stmfts_report_hover_event (struct stmfts_data*,int*) ;
 int stmfts_report_key_event (struct stmfts_data*,int*) ;

__attribute__((used)) static void stmfts_parse_events(struct stmfts_data *sdata)
{
 int i;

 for (i = 0; i < STMFTS_STACK_DEPTH; i++) {
  u8 *event = &sdata->data[i * STMFTS_EVENT_SIZE];

  switch (event[0]) {

  case 140:
  case 129:
  case 128:
   complete(&sdata->cmd_done);


  case 130:
  case 139:
   return;
  }

  switch (event[0] & STMFTS_MASK_EVENT_ID) {

  case 133:
  case 131:
   stmfts_report_contact_event(sdata, event);
   break;

  case 132:
   stmfts_report_contact_release(sdata, event);
   break;

  case 137:
  case 136:
  case 135:
   stmfts_report_hover_event(sdata, event);
   break;

  case 134:
   stmfts_report_key_event(sdata, event);
   break;

  case 138:
   dev_warn(&sdata->client->dev,
     "error code: 0x%x%x%x%x%x%x",
     event[6], event[5], event[4],
     event[3], event[2], event[1]);
   break;

  default:
   dev_err(&sdata->client->dev,
    "unknown event %#02x\n", event[0]);
  }
 }
}
