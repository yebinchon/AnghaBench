
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mip4_ts {int fw_version; } ;
typedef int cmd ;
typedef int buf ;


 int MIP4_R0_INFO ;
 int MIP4_R1_INFO_VERSION_BOOT ;
 int memset (int *,int,int) ;
 int mip4_i2c_xfer (struct mip4_ts*,int *,int,int *,int) ;
 int mip4_parse_fw_version (int *,int *) ;

__attribute__((used)) static int mip4_get_fw_version(struct mip4_ts *ts)
{
 u8 cmd[] = { MIP4_R0_INFO, MIP4_R1_INFO_VERSION_BOOT };
 u8 buf[sizeof(ts->fw_version)];
 int error;

 error = mip4_i2c_xfer(ts, cmd, sizeof(cmd), buf, sizeof(buf));
 if (error) {
  memset(&ts->fw_version, 0xff, sizeof(ts->fw_version));
  return error;
 }

 mip4_parse_fw_version(buf, &ts->fw_version);

 return 0;
}
