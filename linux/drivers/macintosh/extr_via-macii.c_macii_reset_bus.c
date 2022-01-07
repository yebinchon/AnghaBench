
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int ADBREQ_NOSEND ;
 int ADB_BUSRESET ;
 int adb_request (struct adb_request*,int *,int ,int,int ) ;
 int macii_send_request (struct adb_request*,int) ;
 int udelay (int) ;

__attribute__((used)) static int macii_reset_bus(void)
{
 static struct adb_request req;


 adb_request(&req, ((void*)0), ADBREQ_NOSEND, 1, ADB_BUSRESET);
 macii_send_request(&req, 1);


 udelay(3000);

 return 0;
}
