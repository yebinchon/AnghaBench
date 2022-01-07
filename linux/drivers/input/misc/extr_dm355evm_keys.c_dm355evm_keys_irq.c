
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct key_entry {unsigned int keycode; } ;
struct dm355evm_keys {int input; int dev; } ;
typedef int irqreturn_t ;


 int DM355EVM_MSP_INPUT_HIGH ;
 int DM355EVM_MSP_INPUT_LOW ;
 int IRQ_HANDLED ;
 unsigned int KEY_UNKNOWN ;
 int dev_dbg (int ,char*,int,...) ;
 int dm355evm_msp_read (int ) ;
 int input_report_key (int ,unsigned int,int) ;
 int input_sync (int ) ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int) ;

__attribute__((used)) static irqreturn_t dm355evm_keys_irq(int irq, void *_keys)
{
 static u16 last_event;
 struct dm355evm_keys *keys = _keys;
 const struct key_entry *ke;
 unsigned int keycode;
 int status;
 u16 event;





 for (;;) {
  status = dm355evm_msp_read(DM355EVM_MSP_INPUT_HIGH);
  if (status < 0) {
   dev_dbg(keys->dev, "input high err %d\n",
     status);
   break;
  }
  event = status << 8;

  status = dm355evm_msp_read(DM355EVM_MSP_INPUT_LOW);
  if (status < 0) {
   dev_dbg(keys->dev, "input low err %d\n",
     status);
   break;
  }
  event |= status;
  if (event == 0xdead)
   break;
  if (event == last_event) {
   last_event = 0;
   continue;
  }
  last_event = event;


  event &= ~0x0800;


  ke = sparse_keymap_entry_from_scancode(keys->input, event);
  keycode = ke ? ke->keycode : KEY_UNKNOWN;
  dev_dbg(keys->dev,
   "input event 0x%04x--> keycode %d\n",
   event, keycode);


  input_report_key(keys->input, keycode, 1);
  input_sync(keys->input);
  input_report_key(keys->input, keycode, 0);
  input_sync(keys->input);
 }

 return IRQ_HANDLED;
}
