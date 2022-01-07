
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct legacy_clk_set_value {int rate; int id; } ;
typedef int stat ;
typedef int clk ;


 int CMD_SET_CLOCK_VALUE ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (unsigned long) ;
 int scpi_send_message (int ,struct legacy_clk_set_value*,int,int*,int) ;

__attribute__((used)) static int legacy_scpi_clk_set_val(u16 clk_id, unsigned long rate)
{
 int stat;
 struct legacy_clk_set_value clk = {
  .id = cpu_to_le16(clk_id),
  .rate = cpu_to_le32(rate)
 };

 return scpi_send_message(CMD_SET_CLOCK_VALUE, &clk, sizeof(clk),
     &stat, sizeof(stat));
}
