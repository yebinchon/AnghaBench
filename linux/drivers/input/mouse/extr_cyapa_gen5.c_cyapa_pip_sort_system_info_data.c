
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;


 scalar_t__ VALID_CMD_RESP_HEADER (int *,int) ;

bool cyapa_pip_sort_system_info_data(struct cyapa *cyapa,
  u8 *buf, int len)
{

 if (VALID_CMD_RESP_HEADER(buf, 0x02))
  return 1;

 return 0;
}
