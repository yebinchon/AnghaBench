
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;
typedef int mt352_softdown ;



 int _mt352_write (struct dvb_frontend*,int*,int) ;

__attribute__((used)) static int mt352_sleep(struct dvb_frontend* fe)
{
 static u8 mt352_softdown[] = { 128, 0x20, 0x08 };

 _mt352_write(fe, mt352_softdown, sizeof(mt352_softdown));
 return 0;
}
