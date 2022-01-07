
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_get_info {int max_rate; int min_rate; } ;
typedef int le_clk_id ;
typedef int clk ;
typedef int __le16 ;


 int CMD_GET_CLOCK_INFO ;
 int cpu_to_le16 (int ) ;
 unsigned long le32_to_cpu (int ) ;
 int scpi_send_message (int ,int *,int,struct clk_get_info*,int) ;

__attribute__((used)) static int
scpi_clk_get_range(u16 clk_id, unsigned long *min, unsigned long *max)
{
 int ret;
 struct clk_get_info clk;
 __le16 le_clk_id = cpu_to_le16(clk_id);

 ret = scpi_send_message(CMD_GET_CLOCK_INFO, &le_clk_id,
    sizeof(le_clk_id), &clk, sizeof(clk));
 if (!ret) {
  *min = le32_to_cpu(clk.min_rate);
  *max = le32_to_cpu(clk.max_rate);
 }
 return ret;
}
