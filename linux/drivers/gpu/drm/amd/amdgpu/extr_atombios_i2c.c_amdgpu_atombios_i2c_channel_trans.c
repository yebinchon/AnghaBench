
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* u8 ;
struct TYPE_3__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {int ucFlag; int ucTransBytes; void* ucLineNumber; void* ucSlaveAddr; int ucI2CSpeed; void* lpI2CDataOut; void* ucRegIndex; } ;
typedef TYPE_2__ PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int ProcessI2cChannelTransaction ;
 int TARGET_HW_I2C_CLOCK ;
 int amdgpu_atom_execute_table (int ,int,int *) ;

void amdgpu_atombios_i2c_channel_trans(struct amdgpu_device* adev, u8 slave_addr, u8 line_number, u8 offset, u8 data)
{
 PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, ProcessI2cChannelTransaction);

 args.ucRegIndex = offset;
 args.lpI2CDataOut = data;
 args.ucFlag = 1;
 args.ucI2CSpeed = TARGET_HW_I2C_CLOCK;
 args.ucTransBytes = 1;
 args.ucSlaveAddr = slave_addr;
 args.ucLineNumber = line_number;

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
