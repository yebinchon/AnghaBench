
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tca6507_chip {TYPE_2__* bank; TYPE_1__* client; } ;
struct TYPE_4__ {int ontime; int offtime; } ;
struct TYPE_3__ {int dev; } ;


 int INIT_CODE ;
 int TCA6507_FADE_OFF ;
 int TCA6507_FADE_ON ;
 int TCA6507_FIRST_OFF ;
 int TCA6507_FULL_ON ;
 int TCA6507_INITIALIZE ;
 int TCA6507_SECOND_OFF ;
 int choose_times (int,int*,int*) ;
 int dev_dbg (int *,char*,int,int ,int,int ,int) ;
 int set_code (struct tca6507_chip*,int ,int,int) ;
 int * time_codes ;

__attribute__((used)) static void set_times(struct tca6507_chip *tca, int bank)
{
 int c1, c2;
 int result;

 result = choose_times(tca->bank[bank].ontime, &c1, &c2);
 if (result < 0)
  return;
 dev_dbg(&tca->client->dev,
  "Chose on  times %d(%d) %d(%d) for %dms\n",
  c1, time_codes[c1],
  c2, time_codes[c2], tca->bank[bank].ontime);
 set_code(tca, TCA6507_FADE_ON, bank, c2);
 set_code(tca, TCA6507_FULL_ON, bank, c1);
 tca->bank[bank].ontime = result;

 result = choose_times(tca->bank[bank].offtime, &c1, &c2);
 dev_dbg(&tca->client->dev,
  "Chose off times %d(%d) %d(%d) for %dms\n",
  c1, time_codes[c1],
  c2, time_codes[c2], tca->bank[bank].offtime);
 set_code(tca, TCA6507_FADE_OFF, bank, c2);
 set_code(tca, TCA6507_FIRST_OFF, bank, c1);
 set_code(tca, TCA6507_SECOND_OFF, bank, c1);
 tca->bank[bank].offtime = result;

 set_code(tca, TCA6507_INITIALIZE, bank, INIT_CODE);
}
