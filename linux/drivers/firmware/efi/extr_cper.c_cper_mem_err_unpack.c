
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct cper_mem_err_compact {int dummy; } ;


 scalar_t__ cper_dimm_err_location (struct cper_mem_err_compact*,int ) ;
 scalar_t__ cper_mem_err_location (struct cper_mem_err_compact*,int ) ;
 int rcd_decode_str ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;
 int trace_seq_putc (struct trace_seq*,char) ;

const char *cper_mem_err_unpack(struct trace_seq *p,
    struct cper_mem_err_compact *cmem)
{
 const char *ret = trace_seq_buffer_ptr(p);

 if (cper_mem_err_location(cmem, rcd_decode_str))
  trace_seq_printf(p, "%s", rcd_decode_str);
 if (cper_dimm_err_location(cmem, rcd_decode_str))
  trace_seq_printf(p, "%s", rcd_decode_str);
 trace_seq_putc(p, '\0');

 return ret;
}
