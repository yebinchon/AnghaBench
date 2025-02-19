
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct output {int dummy; } ;
struct host1x_channel {int id; } ;
struct host1x {int dummy; } ;


 int HOST1X_CHANNEL_CMDFIFO_RDATA ;
 int HOST1X_CHANNEL_CMDFIFO_STAT ;
 int HOST1X_CHANNEL_CMDFIFO_STAT_EMPTY ;
 int HOST1X_HV_CMDFIFO_PEEK_CTRL ;
 int HOST1X_HV_CMDFIFO_PEEK_CTRL_ADDR (int) ;
 int HOST1X_HV_CMDFIFO_PEEK_CTRL_CHANNEL (int ) ;
 int HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE ;
 int HOST1X_HV_CMDFIFO_PEEK_PTRS ;
 int HOST1X_HV_CMDFIFO_PEEK_PTRS_RD_PTR_V (int) ;
 int HOST1X_HV_CMDFIFO_PEEK_PTRS_WR_PTR_V (int) ;
 int HOST1X_HV_CMDFIFO_PEEK_READ ;
 int HOST1X_HV_CMDFIFO_SETUP (int ) ;
 int HOST1X_HV_CMDFIFO_SETUP_BASE_V (int) ;
 int HOST1X_HV_CMDFIFO_SETUP_LIMIT_V (int) ;
 int HOST1X_HV_ICG_EN_OVERRIDE ;
 int INVALID_PAYLOAD ;
 int host1x_ch_readl (struct host1x_channel*,int ) ;
 int host1x_debug_cont (struct output*,char*,...) ;
 int host1x_debug_output (struct output*,char*,...) ;
 int host1x_hypervisor_readl (struct host1x*,int ) ;
 int host1x_hypervisor_writel (struct host1x*,int,int ) ;
 unsigned int show_channel_command (struct output*,int,int*) ;

__attribute__((used)) static void host1x_debug_show_channel_fifo(struct host1x *host,
        struct host1x_channel *ch,
        struct output *o)
{

 u32 rd_ptr, wr_ptr, start, end;
 u32 payload = INVALID_PAYLOAD;
 unsigned int data_count = 0;

 u32 val;

 host1x_debug_output(o, "%u: fifo:\n", ch->id);

 val = host1x_ch_readl(ch, HOST1X_CHANNEL_CMDFIFO_STAT);
 host1x_debug_output(o, "CMDFIFO_STAT %08x\n", val);
 if (val & HOST1X_CHANNEL_CMDFIFO_STAT_EMPTY) {
  host1x_debug_output(o, "[empty]\n");
  return;
 }

 val = host1x_ch_readl(ch, HOST1X_CHANNEL_CMDFIFO_RDATA);
 host1x_debug_output(o, "CMDFIFO_RDATA %08x\n", val);



 host1x_hypervisor_writel(host, 0x1, HOST1X_HV_ICG_EN_OVERRIDE);

 val = 0;
 val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE;
 val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_CHANNEL(ch->id);
 host1x_hypervisor_writel(host, val, HOST1X_HV_CMDFIFO_PEEK_CTRL);

 val = host1x_hypervisor_readl(host, HOST1X_HV_CMDFIFO_PEEK_PTRS);
 rd_ptr = HOST1X_HV_CMDFIFO_PEEK_PTRS_RD_PTR_V(val);
 wr_ptr = HOST1X_HV_CMDFIFO_PEEK_PTRS_WR_PTR_V(val);

 val = host1x_hypervisor_readl(host, HOST1X_HV_CMDFIFO_SETUP(ch->id));
 start = HOST1X_HV_CMDFIFO_SETUP_BASE_V(val);
 end = HOST1X_HV_CMDFIFO_SETUP_LIMIT_V(val);

 do {
  val = 0;
  val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE;
  val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_CHANNEL(ch->id);
  val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_ADDR(rd_ptr);
  host1x_hypervisor_writel(host, val,
      HOST1X_HV_CMDFIFO_PEEK_CTRL);

  val = host1x_hypervisor_readl(host,
           HOST1X_HV_CMDFIFO_PEEK_READ);

  if (!data_count) {
   host1x_debug_output(o, "%03x 0x%08x: ",
         rd_ptr - start, val);
   data_count = show_channel_command(o, val, &payload);
  } else {
   host1x_debug_cont(o, "%08x%s", val,
       data_count > 1 ? ", " : "])\n");
   data_count--;
  }

  if (rd_ptr == end)
   rd_ptr = start;
  else
   rd_ptr++;
 } while (rd_ptr != wr_ptr);

 if (data_count)
  host1x_debug_cont(o, ", ...])\n");
 host1x_debug_output(o, "\n");

 host1x_hypervisor_writel(host, 0x0, HOST1X_HV_CMDFIFO_PEEK_CTRL);
 host1x_hypervisor_writel(host, 0x0, HOST1X_HV_ICG_EN_OVERRIDE);

}
