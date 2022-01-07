
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char const u8 ;
typedef char const u64 ;
typedef int u32 ;
typedef size_t u16 ;
typedef int ts ;
struct TYPE_3__ {char const* b; } ;
struct TYPE_4__ {scalar_t__ do_len; TYPE_1__ uuid; } ;
struct sys_t_output {TYPE_2__ node; } ;
struct stm_output {unsigned int channel; unsigned int master; struct sys_t_output* pdrv_private; } ;
struct stm_data {scalar_t__ (* packet ) (struct stm_data*,unsigned int,unsigned int,int ,int ,int,unsigned char const*) ;} ;
typedef scalar_t__ ssize_t ;


 int DATA_HEADER ;
 scalar_t__ EINVAL ;
 int MIPI_SYST_OPT_LEN ;
 int MIPI_SYST_OPT_TS ;
 int STP_PACKET_DATA ;
 int STP_PACKET_FLAG ;
 int STP_PACKET_TIMESTAMPED ;
 size_t UUID_SIZE ;
 char ktime_get_real_ns () ;
 scalar_t__ stm_data_write (struct stm_data*,unsigned int,unsigned int,int,char const*,size_t) ;
 scalar_t__ stub1 (struct stm_data*,unsigned int,unsigned int,int ,int ,int,unsigned char const*) ;
 scalar_t__ stub2 (struct stm_data*,unsigned int,unsigned int,int ,int ,int,unsigned char const*) ;
 scalar_t__ stub3 (struct stm_data*,unsigned int,unsigned int,int ,int ,int,unsigned char const*) ;
 scalar_t__ sys_t_clock_sync (struct stm_data*,unsigned int,unsigned int) ;
 scalar_t__ sys_t_need_clock_sync (struct sys_t_output*) ;
 scalar_t__ sys_t_need_ts (struct sys_t_output*) ;

__attribute__((used)) static ssize_t sys_t_write(struct stm_data *data, struct stm_output *output,
      unsigned int chan, const char *buf, size_t count)
{
 struct sys_t_output *op = output->pdrv_private;
 unsigned int c = output->channel + chan;
 unsigned int m = output->master;
 const unsigned char nil = 0;
 u32 header = DATA_HEADER;
 ssize_t sz;


 if (!op)
  return -EINVAL;

 if (sys_t_need_clock_sync(op)) {
  sz = sys_t_clock_sync(data, m, c);
  if (sz <= 0)
   return sz;
 }

 if (op->node.do_len)
  header |= MIPI_SYST_OPT_LEN;
 if (sys_t_need_ts(op))
  header |= MIPI_SYST_OPT_TS;
 sz = data->packet(data, m, c, STP_PACKET_DATA, STP_PACKET_TIMESTAMPED,
     4, (u8 *)&header);
 if (sz <= 0)
  return sz;


 sz = stm_data_write(data, m, c, 0, op->node.uuid.b, UUID_SIZE);
 if (sz <= 0)
  return sz;


 if (op->node.do_len) {
  u16 length = count;

  sz = data->packet(data, m, c, STP_PACKET_DATA, 0, 2,
      (u8 *)&length);
  if (sz <= 0)
   return sz;
 }


 if (header & MIPI_SYST_OPT_TS) {
  u64 ts = ktime_get_real_ns();

  sz = stm_data_write(data, m, c, 0, &ts, sizeof(ts));
  if (sz <= 0)
   return sz;
 }


 sz = stm_data_write(data, m, c, 0, buf, count);
 if (sz > 0)
  data->packet(data, m, c, STP_PACKET_FLAG, 0, 0, &nil);

 return sz;
}
