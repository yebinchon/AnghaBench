
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_WRITE ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int EV_MSC ;
 int MSC_SCAN ;
 int * atlas_keymap ;
 int input_dev ;
 int input_event (int ,int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pr_warn (char*,scalar_t__,unsigned long,scalar_t__) ;

__attribute__((used)) static acpi_status acpi_atlas_button_handler(u32 function,
        acpi_physical_address address,
        u32 bit_width, u64 *value,
        void *handler_context, void *region_context)
{
 acpi_status status;

 if (function == ACPI_WRITE) {
  int code = address & 0x0f;
  int key_down = !(address & 0x10);

  input_event(input_dev, EV_MSC, MSC_SCAN, code);
  input_report_key(input_dev, atlas_keymap[code], key_down);
  input_sync(input_dev);

  status = AE_OK;
 } else {
  pr_warn("shrugged on unexpected function: function=%x,address=%lx,value=%x\n",
   function, (unsigned long)address, (u32)*value);
  status = AE_BAD_PARAMETER;
 }

 return status;
}
