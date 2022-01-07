
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *state2str(unsigned short state)
{
 switch (state) {
 case 130: return "detected";
 case 129: return "loading";
 case 128: return "running";
 default: return "???";
 }
}
