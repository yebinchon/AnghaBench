
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dev; } ;
struct jornadakbd {int * keymap; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int EV_MSC ;
 int GETSCANKEYCODE ;
 int IRQ_HANDLED ;
 int MSC_SCAN ;
 scalar_t__ TXDUMMY ;
 int dev_dbg (int *,char*) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int jornada_ssp_byte (scalar_t__) ;
 int jornada_ssp_end () ;
 scalar_t__ jornada_ssp_inout (int ) ;
 int jornada_ssp_start () ;
 struct jornadakbd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static irqreturn_t jornada720_kbd_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct jornadakbd *jornadakbd = platform_get_drvdata(pdev);
 struct input_dev *input = jornadakbd->input;
 u8 count, kbd_data, scan_code;


 jornada_ssp_start();

 if (jornada_ssp_inout(GETSCANKEYCODE) != TXDUMMY) {
  dev_dbg(&pdev->dev,
   "GetKeycode command failed with ETIMEDOUT, flushed bus\n");
 } else {

  count = jornada_ssp_byte(TXDUMMY);


  while (count--) {

   kbd_data = jornada_ssp_byte(TXDUMMY);
   scan_code = kbd_data & 0x7f;

   input_event(input, EV_MSC, MSC_SCAN, scan_code);
   input_report_key(input, jornadakbd->keymap[scan_code],
      !(kbd_data & 0x80));
   input_sync(input);
  }
 }


 jornada_ssp_end();

 return IRQ_HANDLED;
}
