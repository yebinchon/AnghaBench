
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cyapa {int dummy; } ;


 int PIP_BL_FAIL_EXIT_RESP_LEN ;
 scalar_t__ PIP_BL_RESP_REPORT_ID ;
 scalar_t__ PIP_EOP_KEY ;
 size_t PIP_RESP_BL_SOP_OFFSET ;
 int PIP_RESP_LENGTH_SIZE ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 scalar_t__ PIP_RESP_RSVD_KEY ;
 size_t PIP_RESP_RSVD_OFFSET ;
 scalar_t__ PIP_SOP_KEY ;

__attribute__((used)) static bool cyapa_sort_pip_bl_exit_data(struct cyapa *cyapa, u8 *buf, int len)
{
 if (buf == ((void*)0) || len < PIP_RESP_LENGTH_SIZE)
  return 0;

 if (buf[0] == 0 && buf[1] == 0)
  return 1;


 if (len == PIP_BL_FAIL_EXIT_RESP_LEN &&
   buf[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_BL_RESP_REPORT_ID &&
   buf[PIP_RESP_RSVD_OFFSET] == PIP_RESP_RSVD_KEY &&
   buf[PIP_RESP_BL_SOP_OFFSET] == PIP_SOP_KEY &&
   buf[10] == PIP_EOP_KEY)
  return 1;

 return 0;
}
