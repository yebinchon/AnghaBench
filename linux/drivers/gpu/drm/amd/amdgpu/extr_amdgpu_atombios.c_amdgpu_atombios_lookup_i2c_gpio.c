
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
struct atom_context {int bios; } ;
struct amdgpu_i2c_bus_rec {int valid; } ;
struct TYPE_6__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct _ATOM_GPIO_I2C_INFO {TYPE_3__* asGPIO_Info; } ;
struct TYPE_7__ {scalar_t__ ucAccess; } ;
struct TYPE_8__ {TYPE_2__ sucI2cId; } ;
typedef TYPE_3__ ATOM_GPIO_I2C_ASSIGMENT ;
typedef int ATOM_COMMON_TABLE_HEADER ;


 int DATA ;
 int GPIO_I2C_Info ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ amdgpu_atom_parse_data_header (struct atom_context*,int,int*,int *,int *,int*) ;
 struct amdgpu_i2c_bus_rec amdgpu_atombios_get_bus_rec_for_i2c_gpio (TYPE_3__*) ;
 int amdgpu_atombios_lookup_i2c_gpio_quirks (struct amdgpu_device*,TYPE_3__*,int) ;
 int memset (struct amdgpu_i2c_bus_rec*,int ,int) ;

struct amdgpu_i2c_bus_rec amdgpu_atombios_lookup_i2c_gpio(struct amdgpu_device *adev,
         uint8_t id)
{
 struct atom_context *ctx = adev->mode_info.atom_context;
 ATOM_GPIO_I2C_ASSIGMENT *gpio;
 struct amdgpu_i2c_bus_rec i2c;
 int index = GetIndexIntoMasterTable(DATA, GPIO_I2C_Info);
 struct _ATOM_GPIO_I2C_INFO *i2c_info;
 uint16_t data_offset, size;
 int i, num_indices;

 memset(&i2c, 0, sizeof(struct amdgpu_i2c_bus_rec));
 i2c.valid = 0;

 if (amdgpu_atom_parse_data_header(ctx, index, &size, ((void*)0), ((void*)0), &data_offset)) {
  i2c_info = (struct _ATOM_GPIO_I2C_INFO *)(ctx->bios + data_offset);

  num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
   sizeof(ATOM_GPIO_I2C_ASSIGMENT);

  gpio = &i2c_info->asGPIO_Info[0];
  for (i = 0; i < num_indices; i++) {

   amdgpu_atombios_lookup_i2c_gpio_quirks(adev, gpio, i);

   if (gpio->sucI2cId.ucAccess == id) {
    i2c = amdgpu_atombios_get_bus_rec_for_i2c_gpio(gpio);
    break;
   }
   gpio = (ATOM_GPIO_I2C_ASSIGMENT *)
    ((u8 *)gpio + sizeof(ATOM_GPIO_I2C_ASSIGMENT));
  }
 }

 return i2c;
}
