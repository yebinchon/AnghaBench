
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct i2c_client {int dummy; } ;
struct edt_ft5x06_ts_data {char* name; void* version; } ;
typedef int rdbuf ;


 void* EDT_M06 ;
 void* EDT_M09 ;
 void* EDT_M12 ;
 int EDT_NAME_LEN ;
 void* EV_FT ;
 void* GENERIC_FT ;
 int edt_ft5x06_ts_readwrite (struct i2c_client*,int,char*,int,char*) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,...) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int strncasecmp (char*,char*,int) ;

__attribute__((used)) static int edt_ft5x06_ts_identify(struct i2c_client *client,
     struct edt_ft5x06_ts_data *tsdata,
     char *fw_version)
{
 u8 rdbuf[EDT_NAME_LEN];
 char *p;
 int error;
 char *model_name = tsdata->name;





 memset(rdbuf, 0, sizeof(rdbuf));
 error = edt_ft5x06_ts_readwrite(client, 1, "\xBB",
     EDT_NAME_LEN - 1, rdbuf);
 if (error)
  return error;





 if (!strncasecmp(rdbuf + 1, "EP0", 3)) {
  tsdata->version = EDT_M06;


  rdbuf[EDT_NAME_LEN - 1] = '\0';
  if (rdbuf[EDT_NAME_LEN - 2] == '$')
   rdbuf[EDT_NAME_LEN - 2] = '\0';


  p = strchr(rdbuf, '*');
  if (p)
   *p++ = '\0';
  strlcpy(model_name, rdbuf + 1, EDT_NAME_LEN);
  strlcpy(fw_version, p ? p : "", EDT_NAME_LEN);
 } else if (!strncasecmp(rdbuf, "EP0", 3)) {
  tsdata->version = EDT_M12;


  rdbuf[EDT_NAME_LEN - 2] = '\0';
  if (rdbuf[EDT_NAME_LEN - 3] == '$')
   rdbuf[EDT_NAME_LEN - 3] = '\0';


  p = strchr(rdbuf, '*');
  if (p)
   *p++ = '\0';
  strlcpy(model_name, rdbuf, EDT_NAME_LEN);
  strlcpy(fw_version, p ? p : "", EDT_NAME_LEN);
 } else {
  tsdata->version = GENERIC_FT;

  error = edt_ft5x06_ts_readwrite(client, 1, "\xA6",
      2, rdbuf);
  if (error)
   return error;

  strlcpy(fw_version, rdbuf, 2);

  error = edt_ft5x06_ts_readwrite(client, 1, "\xA8",
      1, rdbuf);
  if (error)
   return error;





  switch (rdbuf[0]) {
  case 0x35:
  case 0x43:
  case 0x50:
  case 0x57:
  case 0x70:
   tsdata->version = EDT_M09;
   snprintf(model_name, EDT_NAME_LEN, "EP0%i%i0M09",
    rdbuf[0] >> 4, rdbuf[0] & 0x0F);
   break;
  case 0xa1:
   tsdata->version = EDT_M09;
   snprintf(model_name, EDT_NAME_LEN, "EP%i%i0ML00",
    rdbuf[0] >> 4, rdbuf[0] & 0x0F);
   break;
  case 0x5a:
   snprintf(model_name, EDT_NAME_LEN, "GKTW50SCED1R0");
   break;
  case 0x59:
   tsdata->version = EV_FT;
   error = edt_ft5x06_ts_readwrite(client, 1, "\x53",
       1, rdbuf);
   if (error)
    return error;
   strlcpy(fw_version, rdbuf, 1);
   snprintf(model_name, EDT_NAME_LEN,
     "EVERVISION-FT5726NEi");
   break;
  default:
   snprintf(model_name, EDT_NAME_LEN,
     "generic ft5x06 (%02x)",
     rdbuf[0]);
   break;
  }
 }

 return 0;
}
