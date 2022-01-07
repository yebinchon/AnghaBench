; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_lifebook.c_lifebook_limit_serio3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_lifebook.c_lifebook_limit_serio3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"isa0060/serio3\00", align 1
@desired_serio_phys = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @lifebook_limit_serio3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lifebook_limit_serio3(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** @desired_serio_phys, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
