
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int * request_header; } ;




 int HEADER_GET_DATA_LENGTH (int ) ;
 int HEADER_GET_EXTENDED_TCODE (int ) ;
 int HEADER_GET_TCODE (int ) ;





 int WARN (int,char*,int) ;

int fw_get_response_length(struct fw_request *r)
{
 int tcode, ext_tcode, data_length;

 tcode = HEADER_GET_TCODE(r->request_header[0]);

 switch (tcode) {
 case 128:
 case 129:
  return 0;

 case 130:
  return 4;

 case 131:
  data_length = HEADER_GET_DATA_LENGTH(r->request_header[3]);
  return data_length;

 case 132:
  ext_tcode = HEADER_GET_EXTENDED_TCODE(r->request_header[3]);
  data_length = HEADER_GET_DATA_LENGTH(r->request_header[3]);
  switch (ext_tcode) {
  case 134:
  case 133:
   return data_length;
  default:
   return data_length / 2;
  }

 default:
  WARN(1, "wrong tcode %d\n", tcode);
  return 0;
 }
}
