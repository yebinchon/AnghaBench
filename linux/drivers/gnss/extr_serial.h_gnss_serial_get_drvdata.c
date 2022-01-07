
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_serial {void* drvdata; } ;



__attribute__((used)) static inline void *gnss_serial_get_drvdata(struct gnss_serial *gserial)
{
 return gserial->drvdata;
}
