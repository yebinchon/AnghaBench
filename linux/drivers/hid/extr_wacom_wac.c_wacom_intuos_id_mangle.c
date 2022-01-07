
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int wacom_intuos_id_mangle(int tool_id)
{
 return (tool_id & ~0xFFF) << 4 | (tool_id & 0xFFF);
}
