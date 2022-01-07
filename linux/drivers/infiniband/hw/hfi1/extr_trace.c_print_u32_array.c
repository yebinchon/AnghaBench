
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;


 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char*,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *print_u32_array(
 struct trace_seq *p,
 u32 *arr, int len)
{
 int i;
 const char *ret = trace_seq_buffer_ptr(p);

 for (i = 0; i < len ; i++)
  trace_seq_printf(p, "%s%#x", i == 0 ? "" : " ", arr[i]);
 trace_seq_putc(p, 0);
 return ret;
}
