
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ totalbyteswritten; int crc32; int adler32; int compcode; } ;
union zip_zres_s {TYPE_2__ s; } ;
typedef union zip_inst_s {int dummy; } zip_inst_s ;
typedef int u32 ;
struct zip_state {union zip_zres_s result; union zip_inst_s zip_cmd; } ;
struct zip_operation {scalar_t__ input_len; int format; scalar_t__ output_len; int csum; int compcode; } ;
struct TYPE_3__ {int comp_out_bytes; int comp_req_complete; int comp_req_submit; int comp_in_bytes; } ;
struct zip_device {TYPE_1__ stats; } ;
 int ZIP_ERROR ;

 int atomic64_add (scalar_t__,int *) ;
 int atomic64_inc (int *) ;
 int prepare_zip_command (struct zip_operation*,struct zip_state*,union zip_inst_s*) ;
 int zip_dbg (char*,...) ;
 int zip_err (char*,scalar_t__,...) ;
 int zip_load_instr (union zip_inst_s*,struct zip_device*) ;
 int zip_poll_result (union zip_zres_s*) ;
 int zip_update_cmd_bufs (struct zip_device*,int ) ;

int zip_deflate(struct zip_operation *zip_ops, struct zip_state *s,
  struct zip_device *zip_dev)
{
 union zip_inst_s *zip_cmd = &s->zip_cmd;
 union zip_zres_s *result_ptr = &s->result;
 u32 queue;


 prepare_zip_command(zip_ops, s, zip_cmd);

 atomic64_add(zip_ops->input_len, &zip_dev->stats.comp_in_bytes);

 queue = zip_load_instr(zip_cmd, zip_dev);


 atomic64_inc(&zip_dev->stats.comp_req_submit);


 zip_poll_result(result_ptr);


 atomic64_inc(&zip_dev->stats.comp_req_complete);

 zip_ops->compcode = result_ptr->s.compcode;
 switch (zip_ops->compcode) {
 case 130:
  zip_dbg("Zip instruction not yet completed");
  return ZIP_ERROR;

 case 129:
  zip_dbg("Zip instruction completed successfully");
  zip_update_cmd_bufs(zip_dev, queue);
  break;

 case 131:
  zip_dbg("Output Truncate error");

  return ZIP_ERROR;

 default:
  zip_err("Zip instruction failed. Code:%d", zip_ops->compcode);
  return ZIP_ERROR;
 }


 switch (zip_ops->format) {
 case 132:
  zip_dbg("RAW Format: %d ", zip_ops->format);

  zip_ops->csum = result_ptr->s.adler32;
  break;

 case 128:
  zip_dbg("ZLIB Format: %d ", zip_ops->format);
  zip_ops->csum = result_ptr->s.adler32;
  break;

 case 134:
  zip_dbg("GZIP Format: %d ", zip_ops->format);
  zip_ops->csum = result_ptr->s.crc32;
  break;

 case 133:
  zip_dbg("LZS Format: %d ", zip_ops->format);
  break;

 default:
  zip_err("Unknown Format:%d\n", zip_ops->format);
 }

 atomic64_add(result_ptr->s.totalbyteswritten,
       &zip_dev->stats.comp_out_bytes);


 if (zip_ops->output_len < result_ptr->s.totalbyteswritten) {

  zip_err("output_len (%d) < total bytes written(%d)\n",
   zip_ops->output_len, result_ptr->s.totalbyteswritten);
  zip_ops->output_len = 0;

 } else {
  zip_ops->output_len = result_ptr->s.totalbyteswritten;
 }

 return 0;
}
