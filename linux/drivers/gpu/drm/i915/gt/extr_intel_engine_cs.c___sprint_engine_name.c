
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int instance; int class; int name; } ;


 int GEM_WARN_ON (int) ;
 char* intel_engine_class_repr (int ) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static void __sprint_engine_name(struct intel_engine_cs *engine)
{





 GEM_WARN_ON(snprintf(engine->name, sizeof(engine->name), "%s'%u",
        intel_engine_class_repr(engine->class),
        engine->instance) >= sizeof(engine->name));
}
