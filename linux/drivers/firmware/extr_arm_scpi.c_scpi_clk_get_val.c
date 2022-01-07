
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int rate ;
typedef int le_clk_id ;
typedef int __le32 ;
typedef int __le16 ;


 int CMD_GET_CLOCK_VALUE ;
 int cpu_to_le16 (int ) ;
 unsigned long le32_to_cpu (int ) ;
 int scpi_send_message (int ,int *,int,int *,int) ;

__attribute__((used)) static unsigned long scpi_clk_get_val(u16 clk_id)
{
 int ret;
 __le32 rate;
 __le16 le_clk_id = cpu_to_le16(clk_id);

 ret = scpi_send_message(CMD_GET_CLOCK_VALUE, &le_clk_id,
    sizeof(le_clk_id), &rate, sizeof(rate));

 return ret ? ret : le32_to_cpu(rate);
}
