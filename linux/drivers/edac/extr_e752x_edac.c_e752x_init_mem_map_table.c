
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct e752x_pvt {int* map; } ;


 scalar_t__ E752X_DRB ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void e752x_init_mem_map_table(struct pci_dev *pdev,
    struct e752x_pvt *pvt)
{
 int index;
 u8 value, last, row;

 last = 0;
 row = 0;

 for (index = 0; index < 8; index += 2) {
  pci_read_config_byte(pdev, E752X_DRB + index, &value);

  if (value == last) {

   pvt->map[index] = 0xff;
   pvt->map[index + 1] = 0xff;
  } else {
   pvt->map[index] = row;
   row++;
   last = value;



   pci_read_config_byte(pdev, E752X_DRB + index + 1,
     &value);



   pvt->map[index + 1] = (value == last) ? 0xff : row;
   row++;
   last = value;
  }
 }
}
