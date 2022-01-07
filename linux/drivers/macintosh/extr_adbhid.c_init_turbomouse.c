
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int ADBREQ_SYNC ;
 int ADB_FLUSH (int) ;
 int ADB_WRITEREG (int,int) ;
 int adb_request (struct adb_request*,int *,int ,int,int ,...) ;

__attribute__((used)) static void
init_turbomouse(int id)
{
 struct adb_request req;

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 1, ADB_FLUSH(id));

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 1, ADB_FLUSH(3));

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 9,
 ADB_WRITEREG(3,2),
     0xe7,
     0x8c,
     0,
     0,
     0,
     0xff,
     0xff,
     0x94);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 1, ADB_FLUSH(3));

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 9,
 ADB_WRITEREG(3,2),
     0xa5,
     0x14,
     0,
     0,
     0x69,
     0xff,
     0xff,
     0x27);
}
