
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {int dummy; } ;
struct i5400_error_info {int ferr_fat_fbd; } ;


 int FERR_FAT_MASK ;
 int i5400_proccess_non_recoverable_info (struct mem_ctl_info*,struct i5400_error_info*,int) ;
 int i5400_process_nonfatal_error_info (struct mem_ctl_info*,struct i5400_error_info*) ;

__attribute__((used)) static void i5400_process_error_info(struct mem_ctl_info *mci,
    struct i5400_error_info *info)
{ u32 allErrors;


 allErrors = (info->ferr_fat_fbd & FERR_FAT_MASK);
 i5400_proccess_non_recoverable_info(mci, info, allErrors);


 i5400_process_nonfatal_error_info(mci, info);
}
