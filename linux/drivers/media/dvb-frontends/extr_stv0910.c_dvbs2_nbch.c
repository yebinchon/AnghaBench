
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;
typedef enum dvbs2_mod_cod { ____Placeholder_dvbs2_mod_cod } dvbs2_mod_cod ;
typedef enum dvbs2_fectype { ____Placeholder_dvbs2_fectype } dvbs2_fectype ;


 int DVBS2_16K ;
 int DVBS2_32APSK_9_10 ;
 int DVBS2_QPSK_1_4 ;

__attribute__((used)) static u32 dvbs2_nbch(enum dvbs2_mod_cod mod_cod, enum dvbs2_fectype fectype)
{
 static const u32 nbch[][2] = {
  { 0, 0},
  {16200, 3240},
  {21600, 5400},
  {25920, 6480},
  {32400, 7200},
  {38880, 9720},
  {43200, 10800},
  {48600, 11880},
  {51840, 12600},
  {54000, 13320},
  {57600, 14400},
  {58320, 16000},
  {43200, 9720},
  {48600, 10800},
  {51840, 11880},
  {54000, 13320},
  {57600, 14400},
  {58320, 16000},
  {43200, 10800},
  {48600, 11880},
  {51840, 12600},
  {54000, 13320},
  {57600, 14400},
  {58320, 16000},
  {48600, 11880},
  {51840, 12600},
  {54000, 13320},
  {57600, 14400},
  {58320, 16000},
 };

 if (mod_cod >= DVBS2_QPSK_1_4 &&
     mod_cod <= DVBS2_32APSK_9_10 && fectype <= DVBS2_16K)
  return nbch[mod_cod][fectype];
 return 64800;
}
