
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int ) ;
 int egress_err_info_flags ;
 char* flag_string (char*,int,int ,int ,int ) ;

__attribute__((used)) static char *egress_err_info_string(char *buf, int buf_len, u64 flags)
{
 return flag_string(buf, buf_len, flags,
      egress_err_info_flags,
      ARRAY_SIZE(egress_err_info_flags));
}
