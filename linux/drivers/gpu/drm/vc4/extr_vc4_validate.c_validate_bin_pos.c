
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vc4_exec_info {void* bin_u; } ;



__attribute__((used)) static bool
validate_bin_pos(struct vc4_exec_info *exec, void *untrusted, uint32_t pos)
{



 return (untrusted - 1 == exec->bin_u + pos);
}
