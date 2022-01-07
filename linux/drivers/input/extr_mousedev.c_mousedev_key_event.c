
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buttons; } ;
struct mousedev {TYPE_1__ packet; } ;
struct TYPE_5__ {int buttons; } ;
struct TYPE_6__ {TYPE_2__ packet; } ;
 int clear_bit (int,int *) ;
 TYPE_3__* mousedev_mix ;
 int set_bit (int,int *) ;

__attribute__((used)) static void mousedev_key_event(struct mousedev *mousedev,
    unsigned int code, int value)
{
 int index;

 switch (code) {

 case 128:
 case 142:
 case 134: index = 0; break;

 case 130:
 case 141:
 case 132: index = 1; break;

 case 140:
 case 135:
 case 129:
 case 133: index = 2; break;

 case 139:
 case 137:
 case 131: index = 3; break;

 case 138:
 case 136: index = 4; break;

 default: return;
 }

 if (value) {
  set_bit(index, &mousedev->packet.buttons);
  set_bit(index, &mousedev_mix->packet.buttons);
 } else {
  clear_bit(index, &mousedev->packet.buttons);
  clear_bit(index, &mousedev_mix->packet.buttons);
 }
}
