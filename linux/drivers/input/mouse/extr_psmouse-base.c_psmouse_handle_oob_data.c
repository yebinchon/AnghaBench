
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct psmouse {int oob_data_type; void* extra_buttons; int dev; } ;




 int input_sync (int ) ;
 int psmouse_report_standard_buttons (int ,void*) ;
 int psmouse_warn (struct psmouse*,char*,int) ;

__attribute__((used)) static void psmouse_handle_oob_data(struct psmouse *psmouse, u8 data)
{
 switch (psmouse->oob_data_type) {
 case 128:
  psmouse->oob_data_type = data;
  break;

 case 129:
  psmouse_report_standard_buttons(psmouse->dev, data);
  input_sync(psmouse->dev);

  psmouse->extra_buttons = data;
  psmouse->oob_data_type = 128;
  break;

 default:
  psmouse_warn(psmouse,
        "unknown OOB_DATA type: 0x%02x\n",
        psmouse->oob_data_type);
  psmouse->oob_data_type = 128;
  break;
 }
}
