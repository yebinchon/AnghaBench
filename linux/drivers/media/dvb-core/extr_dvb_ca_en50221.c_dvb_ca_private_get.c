
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_private {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void dvb_ca_private_get(struct dvb_ca_private *ca)
{
 kref_get(&ca->refcount);
}
