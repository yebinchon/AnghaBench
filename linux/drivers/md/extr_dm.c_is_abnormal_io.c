
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;






 int bio_op (struct bio*) ;

__attribute__((used)) static bool is_abnormal_io(struct bio *bio)
{
 bool r = 0;

 switch (bio_op(bio)) {
 case 131:
 case 130:
 case 129:
 case 128:
  r = 1;
  break;
 }

 return r;
}
