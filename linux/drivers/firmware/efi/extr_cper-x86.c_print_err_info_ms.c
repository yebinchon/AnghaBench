
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
typedef int u16 ;


 size_t ARRAY_SIZE (char**) ;
 size_t CHECK_MS_ERR_TYPE (int ) ;
 int CHECK_MS_OVERFLOW ;
 int CHECK_MS_PCC ;
 int CHECK_MS_PRECISE_IP ;
 int CHECK_MS_RESTARTABLE_IP ;
 int CHECK_MS_UNCORRECTED ;
 int CHECK_VALID_MS_ERR_TYPE ;
 int CHECK_VALID_MS_OVERFLOW ;
 int CHECK_VALID_MS_PCC ;
 int CHECK_VALID_MS_PRECISE_IP ;
 int CHECK_VALID_MS_RESTARTABLE_IP ;
 int CHECK_VALID_MS_UNCORRECTED ;
 char** ia_check_ms_error_type_strs ;
 int print_bool (char*,char const*,int ,int ) ;
 int printk (char*,char const*,size_t,char*) ;

__attribute__((used)) static void print_err_info_ms(const char *pfx, u16 validation_bits, u64 check)
{
 if (validation_bits & CHECK_VALID_MS_ERR_TYPE) {
  u8 err_type = CHECK_MS_ERR_TYPE(check);

  printk("%sError Type: %u, %s\n", pfx, err_type,
         err_type < ARRAY_SIZE(ia_check_ms_error_type_strs) ?
         ia_check_ms_error_type_strs[err_type] : "unknown");
 }

 if (validation_bits & CHECK_VALID_MS_PCC)
  print_bool("Processor Context Corrupt", pfx, check, CHECK_MS_PCC);

 if (validation_bits & CHECK_VALID_MS_UNCORRECTED)
  print_bool("Uncorrected", pfx, check, CHECK_MS_UNCORRECTED);

 if (validation_bits & CHECK_VALID_MS_PRECISE_IP)
  print_bool("Precise IP", pfx, check, CHECK_MS_PRECISE_IP);

 if (validation_bits & CHECK_VALID_MS_RESTARTABLE_IP)
  print_bool("Restartable IP", pfx, check, CHECK_MS_RESTARTABLE_IP);

 if (validation_bits & CHECK_VALID_MS_OVERFLOW)
  print_bool("Overflow", pfx, check, CHECK_MS_OVERFLOW);
}
