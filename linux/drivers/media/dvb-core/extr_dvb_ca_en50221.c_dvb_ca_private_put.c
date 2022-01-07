
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_private {int refcount; } ;


 int dvb_ca_private_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void dvb_ca_private_put(struct dvb_ca_private *ca)
{
 kref_put(&ca->refcount, dvb_ca_private_release);
}
