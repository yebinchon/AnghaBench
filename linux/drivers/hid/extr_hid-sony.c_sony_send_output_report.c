
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int (* send_output_report ) (struct sony_sc*) ;} ;


 int stub1 (struct sony_sc*) ;

__attribute__((used)) static inline void sony_send_output_report(struct sony_sc *sc)
{
 if (sc->send_output_report)
  sc->send_output_report(sc);
}
