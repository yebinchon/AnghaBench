
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRVNAME ;
 int EBUSY ;
 int request_muxed_region (int,int,int ) ;

__attribute__((used)) static inline int superio_enter(int sioaddr)
{
 if (!request_muxed_region(sioaddr, 2, DRVNAME))
  return -EBUSY;
 return 0;
}
