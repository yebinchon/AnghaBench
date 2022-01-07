
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_di {int dummy; } ;


 int DI_DW_GEN (int) ;
 int DI_DW_GEN_ACCESS_SIZE_OFFSET ;
 int DI_DW_GEN_COMPONENT_SIZE_OFFSET ;
 int ipu_di_write (struct ipu_di*,int,int ) ;

__attribute__((used)) static void ipu_di_data_wave_config(struct ipu_di *di,
         int wave_gen,
         int access_size, int component_size)
{
 u32 reg;
 reg = (access_size << DI_DW_GEN_ACCESS_SIZE_OFFSET) |
     (component_size << DI_DW_GEN_COMPONENT_SIZE_OFFSET);
 ipu_di_write(di, reg, DI_DW_GEN(wave_gen));
}
