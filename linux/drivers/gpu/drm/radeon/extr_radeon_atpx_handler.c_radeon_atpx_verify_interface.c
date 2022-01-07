
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef size_t u16 ;
struct radeon_atpx {int functions; int handle; } ;
struct atpx_verify_interface {int function_bits; int version; } ;
typedef int output ;


 int ATPX_FUNCTION_VERIFY_INTERFACE ;
 int EINVAL ;
 int EIO ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atpx_verify_interface*,scalar_t__,size_t) ;
 int memset (struct atpx_verify_interface*,int ,int) ;
 size_t min (int,size_t) ;
 int printk (char*,size_t,...) ;
 union acpi_object* radeon_atpx_call (int ,int ,int *) ;
 int radeon_atpx_parse_functions (int *,int ) ;

__attribute__((used)) static int radeon_atpx_verify_interface(struct radeon_atpx *atpx)
{
 union acpi_object *info;
 struct atpx_verify_interface output;
 size_t size;
 int err = 0;

 info = radeon_atpx_call(atpx->handle, ATPX_FUNCTION_VERIFY_INTERFACE, ((void*)0));
 if (!info)
  return -EIO;

 memset(&output, 0, sizeof(output));

 size = *(u16 *) info->buffer.pointer;
 if (size < 8) {
  printk("ATPX buffer is too small: %zu\n", size);
  err = -EINVAL;
  goto out;
 }
 size = min(sizeof(output), size);

 memcpy(&output, info->buffer.pointer, size);


 printk("ATPX version %u, functions 0x%08x\n",
        output.version, output.function_bits);

 radeon_atpx_parse_functions(&atpx->functions, output.function_bits);

out:
 kfree(info);
 return err;
}
