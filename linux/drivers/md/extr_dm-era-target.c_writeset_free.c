
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset {int bits; } ;


 int vfree (int ) ;

__attribute__((used)) static void writeset_free(struct writeset *ws)
{
 vfree(ws->bits);
}
