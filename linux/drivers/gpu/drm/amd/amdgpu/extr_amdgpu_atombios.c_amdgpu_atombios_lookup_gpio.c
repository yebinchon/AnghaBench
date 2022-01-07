
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct atom_context {int bios; } ;
struct amdgpu_gpio_rec {int valid; scalar_t__ id; int shift; int mask; int reg; } ;
struct TYPE_3__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct _ATOM_GPIO_PIN_LUT {TYPE_2__* asGPIO_Pin; } ;
struct TYPE_4__ {scalar_t__ ucGPIO_ID; int ucGpioPinBitShift; int usGpioPin_AIndex; } ;
typedef TYPE_2__ ATOM_GPIO_PIN_ASSIGNMENT ;
typedef int ATOM_COMMON_TABLE_HEADER ;


 int DATA ;
 int GPIO_Pin_LUT ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ amdgpu_atom_parse_data_header (struct atom_context*,int,int*,int *,int *,int*) ;
 int le16_to_cpu (int ) ;
 int memset (struct amdgpu_gpio_rec*,int ,int) ;

struct amdgpu_gpio_rec
amdgpu_atombios_lookup_gpio(struct amdgpu_device *adev,
       u8 id)
{
 struct atom_context *ctx = adev->mode_info.atom_context;
 struct amdgpu_gpio_rec gpio;
 int index = GetIndexIntoMasterTable(DATA, GPIO_Pin_LUT);
 struct _ATOM_GPIO_PIN_LUT *gpio_info;
 ATOM_GPIO_PIN_ASSIGNMENT *pin;
 u16 data_offset, size;
 int i, num_indices;

 memset(&gpio, 0, sizeof(struct amdgpu_gpio_rec));
 gpio.valid = 0;

 if (amdgpu_atom_parse_data_header(ctx, index, &size, ((void*)0), ((void*)0), &data_offset)) {
  gpio_info = (struct _ATOM_GPIO_PIN_LUT *)(ctx->bios + data_offset);

  num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
   sizeof(ATOM_GPIO_PIN_ASSIGNMENT);

  pin = gpio_info->asGPIO_Pin;
  for (i = 0; i < num_indices; i++) {
   if (id == pin->ucGPIO_ID) {
    gpio.id = pin->ucGPIO_ID;
    gpio.reg = le16_to_cpu(pin->usGpioPin_AIndex);
    gpio.shift = pin->ucGpioPinBitShift;
    gpio.mask = (1 << pin->ucGpioPinBitShift);
    gpio.valid = 1;
    break;
   }
   pin = (ATOM_GPIO_PIN_ASSIGNMENT *)
    ((u8 *)pin + sizeof(ATOM_GPIO_PIN_ASSIGNMENT));
  }
 }

 return gpio;
}
