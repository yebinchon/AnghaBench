
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
struct dvb_diseqc_master_cmd {int dummy; } ;



__attribute__((used)) static int send_master_cmd(struct dvb_frontend *fe,
      struct dvb_diseqc_master_cmd *cmd)
{


 return 0;
}
