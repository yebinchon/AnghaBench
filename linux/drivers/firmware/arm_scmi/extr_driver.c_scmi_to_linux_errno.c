
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int SCMI_ERR_MAX ;
 int SCMI_SUCCESS ;
 int* scmi_linux_errmap ;

__attribute__((used)) static inline int scmi_to_linux_errno(int errno)
{
 if (errno < SCMI_SUCCESS && errno > SCMI_ERR_MAX)
  return scmi_linux_errmap[-errno];
 return -EIO;
}
