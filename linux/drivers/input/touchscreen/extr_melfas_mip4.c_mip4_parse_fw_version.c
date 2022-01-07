
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mip4_fw_version {void* param; void* app; void* core; void* boot; } ;


 void* get_unaligned_le16 (int const*) ;

__attribute__((used)) static void mip4_parse_fw_version(const u8 *buf, struct mip4_fw_version *v)
{
 v->boot = get_unaligned_le16(buf + 0);
 v->core = get_unaligned_le16(buf + 2);
 v->app = get_unaligned_le16(buf + 4);
 v->param = get_unaligned_le16(buf + 6);
}
