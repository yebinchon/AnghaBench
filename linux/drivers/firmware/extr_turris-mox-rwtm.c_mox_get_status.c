
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mbox_cmd { ____Placeholder_mbox_cmd } mbox_cmd ;


 int EIO ;
 int MBOX_STS_CMD (int ) ;
 scalar_t__ MBOX_STS_ERROR (int ) ;
 scalar_t__ MBOX_STS_FAIL ;
 scalar_t__ MBOX_STS_SUCCESS ;
 int MBOX_STS_VALUE (int ) ;

__attribute__((used)) static int mox_get_status(enum mbox_cmd cmd, u32 retval)
{
 if (MBOX_STS_CMD(retval) != cmd ||
     MBOX_STS_ERROR(retval) != MBOX_STS_SUCCESS)
  return -EIO;
 else if (MBOX_STS_ERROR(retval) == MBOX_STS_FAIL)
  return -(int)MBOX_STS_VALUE(retval);
 else
  return MBOX_STS_VALUE(retval);
}
