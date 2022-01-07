
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_caam32 (int ) ;

__attribute__((used)) static inline u32 *write_cmd(u32 * const desc, u32 command)
{
 *desc = cpu_to_caam32(command);

 return desc + 1;
}
