
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void dvb_frontend_get(struct dvb_frontend *fe)
{
 kref_get(&fe->refcount);
}
