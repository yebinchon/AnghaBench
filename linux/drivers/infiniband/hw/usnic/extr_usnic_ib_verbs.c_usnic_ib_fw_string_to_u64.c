
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static void usnic_ib_fw_string_to_u64(char *fw_ver_str, u64 *fw_ver)
{
 *fw_ver = *((u64 *)fw_ver_str);
}
