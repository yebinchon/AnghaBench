
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int ) ;
 int cce_err_status_flags ;
 char* flag_string (char*,int,int ,int ,int ) ;

__attribute__((used)) static char *cce_err_status_string(char *buf, int buf_len, u64 flags)
{
 return flag_string(buf, buf_len, flags,
      cce_err_status_flags,
      ARRAY_SIZE(cce_err_status_flags));
}
