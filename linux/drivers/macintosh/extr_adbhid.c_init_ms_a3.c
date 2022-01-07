
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
init_ms_a3(int id)
{
 struct adb_request req;

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id, 0x2),
     0x00,
     0x07);

  adb_request(&req, ((void*)0), ADBREQ_SYNC, 1, ADB_FLUSH(id));
}
