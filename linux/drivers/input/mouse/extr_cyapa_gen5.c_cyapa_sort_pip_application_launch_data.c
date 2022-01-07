
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cyapa {int dummy; } ;


 int PIP_RESP_LENGTH_SIZE ;

__attribute__((used)) static bool cyapa_sort_pip_application_launch_data(struct cyapa *cyapa,
  u8 *buf, int len)
{
 if (buf == ((void*)0) || len < PIP_RESP_LENGTH_SIZE)
  return 0;





 if (buf[0] == 0 && buf[1] == 0)
  return 1;

 return 0;
}
