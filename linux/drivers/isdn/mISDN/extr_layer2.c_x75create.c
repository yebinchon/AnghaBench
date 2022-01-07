
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int ch; } ;
struct channel_req {scalar_t__ protocol; int * ch; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 scalar_t__ ISDN_P_B_HDLC ;
 scalar_t__ ISDN_P_B_X75SLP ;
 struct layer2* create_l2 (int *,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int
x75create(struct channel_req *crq)
{
 struct layer2 *l2;

 if (crq->protocol != ISDN_P_B_X75SLP)
  return -EPROTONOSUPPORT;
 l2 = create_l2(crq->ch, crq->protocol, 0, 0, 0);
 if (!l2)
  return -ENOMEM;
 crq->ch = &l2->ch;
 crq->protocol = ISDN_P_B_HDLC;
 return 0;
}
