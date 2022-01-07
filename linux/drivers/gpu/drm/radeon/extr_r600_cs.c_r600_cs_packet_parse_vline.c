
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_cs_parser {int dummy; } ;






 int r600_cs_common_vline_parse (struct radeon_cs_parser*,int *,int *) ;

__attribute__((used)) static int r600_cs_packet_parse_vline(struct radeon_cs_parser *p)
{
 static uint32_t vline_start_end[2] = {131,
           129};
 static uint32_t vline_status[2] = {130,
        128};

 return r600_cs_common_vline_parse(p, vline_start_end, vline_status);
}
