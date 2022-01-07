
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_handle {int dummy; } ;


 int ARCH_COLD_RESET ;
 int EXPLICIT_RESET_ASSERT ;
 int scmi_domain_reset (struct scmi_handle const*,int ,int ,int ) ;

__attribute__((used)) static int
scmi_reset_domain_assert(const struct scmi_handle *handle, u32 domain)
{
 return scmi_domain_reset(handle, domain, EXPLICIT_RESET_ASSERT,
     ARCH_COLD_RESET);
}
