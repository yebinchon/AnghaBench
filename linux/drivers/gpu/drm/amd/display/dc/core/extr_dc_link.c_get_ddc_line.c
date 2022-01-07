
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc {int dummy; } ;
struct dc_link {int ddc; } ;
typedef enum channel_id { ____Placeholder_channel_id } channel_id ;


 int BREAK_TO_DEBUGGER () ;
 int CHANNEL_ID_DDC1 ;
 int CHANNEL_ID_DDC2 ;
 int CHANNEL_ID_DDC3 ;
 int CHANNEL_ID_DDC4 ;
 int CHANNEL_ID_DDC5 ;
 int CHANNEL_ID_DDC6 ;
 int CHANNEL_ID_DDC_VGA ;
 int CHANNEL_ID_I2C_PAD ;
 int CHANNEL_ID_UNKNOWN ;
 int dal_ddc_get_line (struct ddc*) ;
 struct ddc* dal_ddc_service_get_ddc_pin (int ) ;

__attribute__((used)) static enum channel_id get_ddc_line(struct dc_link *link)
{
 struct ddc *ddc;
 enum channel_id channel = CHANNEL_ID_UNKNOWN;

 ddc = dal_ddc_service_get_ddc_pin(link->ddc);

 if (ddc) {
  switch (dal_ddc_get_line(ddc)) {
  case 135:
   channel = CHANNEL_ID_DDC1;
   break;
  case 134:
   channel = CHANNEL_ID_DDC2;
   break;
  case 133:
   channel = CHANNEL_ID_DDC3;
   break;
  case 132:
   channel = CHANNEL_ID_DDC4;
   break;
  case 131:
   channel = CHANNEL_ID_DDC5;
   break;
  case 130:
   channel = CHANNEL_ID_DDC6;
   break;
  case 129:
   channel = CHANNEL_ID_DDC_VGA;
   break;
  case 128:
   channel = CHANNEL_ID_I2C_PAD;
   break;
  default:
   BREAK_TO_DEBUGGER();
   break;
  }
 }

 return channel;
}
