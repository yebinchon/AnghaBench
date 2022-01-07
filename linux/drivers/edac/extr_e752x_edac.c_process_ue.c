
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {int dummy; } ;


 int do_process_ue (struct mem_ctl_info*,int ,int ,int ) ;

__attribute__((used)) static inline void process_ue(struct mem_ctl_info *mci, u16 error_one,
   u32 ded_add, u32 scrb_add, int *error_found,
   int handle_error)
{
 *error_found = 1;

 if (handle_error)
  do_process_ue(mci, error_one, ded_add, scrb_add);
}
