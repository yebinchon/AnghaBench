
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_access_flags { ____Placeholder_ib_access_flags } ib_access_flags ;


 int BNXT_QPLIB_ACCESS_LOCAL_WRITE ;
 int BNXT_QPLIB_ACCESS_MW_BIND ;
 int BNXT_QPLIB_ACCESS_ON_DEMAND ;
 int BNXT_QPLIB_ACCESS_REMOTE_ATOMIC ;
 int BNXT_QPLIB_ACCESS_REMOTE_READ ;
 int BNXT_QPLIB_ACCESS_REMOTE_WRITE ;
 int BNXT_QPLIB_ACCESS_ZERO_BASED ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_MW_BIND ;
 int IB_ACCESS_ON_DEMAND ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_ZERO_BASED ;

__attribute__((used)) static enum ib_access_flags __to_ib_access_flags(int qflags)
{
 enum ib_access_flags iflags = 0;

 if (qflags & BNXT_QPLIB_ACCESS_LOCAL_WRITE)
  iflags |= IB_ACCESS_LOCAL_WRITE;
 if (qflags & BNXT_QPLIB_ACCESS_REMOTE_WRITE)
  iflags |= IB_ACCESS_REMOTE_WRITE;
 if (qflags & BNXT_QPLIB_ACCESS_REMOTE_READ)
  iflags |= IB_ACCESS_REMOTE_READ;
 if (qflags & BNXT_QPLIB_ACCESS_REMOTE_ATOMIC)
  iflags |= IB_ACCESS_REMOTE_ATOMIC;
 if (qflags & BNXT_QPLIB_ACCESS_MW_BIND)
  iflags |= IB_ACCESS_MW_BIND;
 if (qflags & BNXT_QPLIB_ACCESS_ZERO_BASED)
  iflags |= IB_ZERO_BASED;
 if (qflags & BNXT_QPLIB_ACCESS_ON_DEMAND)
  iflags |= IB_ACCESS_ON_DEMAND;
 return iflags;
}
