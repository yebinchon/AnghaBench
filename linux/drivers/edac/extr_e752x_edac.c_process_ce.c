
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {int dummy; } ;


 int do_process_ce (struct mem_ctl_info*,int ,int ,int ) ;

__attribute__((used)) static inline void process_ce(struct mem_ctl_info *mci, u16 error_one,
   u32 sec1_add, u16 sec1_syndrome, int *error_found,
   int handle_error)
{
 *error_found = 1;

 if (handle_error)
  do_process_ce(mci, error_one, sec1_add, sec1_syndrome);
}
