
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int ) ;
 char* flag_string (char*,int,int ,int ,int ) ;
 int sc_err_status_flags ;

__attribute__((used)) static char *send_context_err_status_string(char *buf, int buf_len, u64 flags)
{
 return flag_string(buf, buf_len, flags,
      sc_err_status_flags,
      ARRAY_SIZE(sc_err_status_flags));
}
