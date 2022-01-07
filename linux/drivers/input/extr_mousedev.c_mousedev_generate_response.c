
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev_client {int* ps2; int bufsiz; int mode; int buffer; int imexseq; int impsseq; } ;





 int mousedev_packet (struct mousedev_client*,int*) ;

__attribute__((used)) static void mousedev_generate_response(struct mousedev_client *client,
     int command)
{
 client->ps2[0] = 0xfa;

 switch (command) {

 case 0xeb:
  mousedev_packet(client, &client->ps2[1]);
  client->bufsiz++;
  break;

 case 0xf2:
  switch (client->mode) {
  case 128:
   client->ps2[1] = 0;
   break;
  case 129:
   client->ps2[1] = 3;
   break;
  case 130:
   client->ps2[1] = 4;
   break;
  }
  client->bufsiz = 2;
  break;

 case 0xe9:
  client->ps2[1] = 0x60; client->ps2[2] = 3; client->ps2[3] = 200;
  client->bufsiz = 4;
  break;

 case 0xff:
  client->impsseq = client->imexseq = 0;
  client->mode = 128;
  client->ps2[1] = 0xaa; client->ps2[2] = 0x00;
  client->bufsiz = 3;
  break;

 default:
  client->bufsiz = 1;
  break;
 }
 client->buffer = client->bufsiz;
}
