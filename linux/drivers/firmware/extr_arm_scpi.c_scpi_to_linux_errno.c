
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int SCPI_ERR_MAX ;
 int SCPI_SUCCESS ;
 int* scpi_linux_errmap ;

__attribute__((used)) static inline int scpi_to_linux_errno(int errno)
{
 if (errno >= SCPI_SUCCESS && errno < SCPI_ERR_MAX)
  return scpi_linux_errmap[errno];
 return -EIO;
}
