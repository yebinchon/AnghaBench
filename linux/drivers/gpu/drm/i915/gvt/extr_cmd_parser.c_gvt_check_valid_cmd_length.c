
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int gvt_err (char*,int,int) ;

__attribute__((used)) static int gvt_check_valid_cmd_length(int len, int valid_len)
{
 if (valid_len != len) {
  gvt_err("len is not valid:  len=%u  valid_len=%u\n",
   len, valid_len);
  return -EFAULT;
 }
 return 0;
}
