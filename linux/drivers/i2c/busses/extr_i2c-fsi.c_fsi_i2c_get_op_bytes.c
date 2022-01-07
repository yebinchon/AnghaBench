
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fsi_i2c_get_op_bytes(int op_bytes)
{

 if (op_bytes > 4)
  return 4;
 else if (op_bytes == 3)
  return 2;
 return op_bytes;
}
