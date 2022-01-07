
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int IMX_SC_ERR_LAST ;
 int IMX_SC_ERR_NONE ;
 int* imx_sc_linux_errmap ;

__attribute__((used)) static inline int imx_sc_to_linux_errno(int errno)
{
 if (errno >= IMX_SC_ERR_NONE && errno < IMX_SC_ERR_LAST)
  return imx_sc_linux_errmap[errno];
 return -EIO;
}
