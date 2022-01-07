
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_packet {int* header; int header_length; size_t payload_length; int payload_mapped; void* payload; } ;


 int HEADER_DATA_LENGTH (size_t) ;
 int HEADER_DESTINATION (int) ;
 int HEADER_EXTENDED_TCODE (int) ;
 int HEADER_GET_DESTINATION (int) ;
 int HEADER_GET_EXTENDED_TCODE (int) ;
 int HEADER_GET_SOURCE (int) ;
 int HEADER_GET_TCODE (int) ;
 int HEADER_GET_TLABEL (int) ;
 int HEADER_RCODE (int) ;
 int HEADER_RETRY (int ) ;
 int HEADER_SOURCE (int) ;
 int HEADER_TCODE (int) ;
 int HEADER_TLABEL (int) ;
 int RETRY_1 ;



 int TCODE_READ_QUADLET_RESPONSE ;


 int TCODE_WRITE_RESPONSE ;
 int WARN (int,char*,int) ;

void fw_fill_response(struct fw_packet *response, u32 *request_header,
        int rcode, void *payload, size_t length)
{
 int tcode, tlabel, extended_tcode, source, destination;

 tcode = HEADER_GET_TCODE(request_header[0]);
 tlabel = HEADER_GET_TLABEL(request_header[0]);
 source = HEADER_GET_DESTINATION(request_header[0]);
 destination = HEADER_GET_SOURCE(request_header[1]);
 extended_tcode = HEADER_GET_EXTENDED_TCODE(request_header[3]);

 response->header[0] =
  HEADER_RETRY(RETRY_1) |
  HEADER_TLABEL(tlabel) |
  HEADER_DESTINATION(destination);
 response->header[1] =
  HEADER_SOURCE(source) |
  HEADER_RCODE(rcode);
 response->header[2] = 0;

 switch (tcode) {
 case 128:
 case 129:
  response->header[0] |= HEADER_TCODE(TCODE_WRITE_RESPONSE);
  response->header_length = 12;
  response->payload_length = 0;
  break;

 case 130:
  response->header[0] |=
   HEADER_TCODE(TCODE_READ_QUADLET_RESPONSE);
  if (payload != ((void*)0))
   response->header[3] = *(u32 *)payload;
  else
   response->header[3] = 0;
  response->header_length = 16;
  response->payload_length = 0;
  break;

 case 131:
 case 132:
  response->header[0] |= HEADER_TCODE(tcode + 2);
  response->header[3] =
   HEADER_DATA_LENGTH(length) |
   HEADER_EXTENDED_TCODE(extended_tcode);
  response->header_length = 16;
  response->payload = payload;
  response->payload_length = length;
  break;

 default:
  WARN(1, "wrong tcode %d\n", tcode);
 }

 response->payload_mapped = 0;
}
