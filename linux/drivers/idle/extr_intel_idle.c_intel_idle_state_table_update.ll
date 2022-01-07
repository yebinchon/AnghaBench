; ModuleID = '/home/carl/AnghaBench/linux/drivers/idle/extr_intel_idle.c_intel_idle_state_table_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/idle/extr_intel_idle.c_intel_idle_state_table_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_idle_state_table_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_idle_state_table_update() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  switch i32 %1, label %8 [
    i32 129, label %2
    i32 131, label %4
    i32 130, label %4
    i32 128, label %6
  ]

2:                                                ; preds = %0
  %3 = call i32 (...) @ivt_idle_state_table_update()
  br label %8

4:                                                ; preds = %0, %0
  %5 = call i32 (...) @bxt_idle_state_table_update()
  br label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @sklh_idle_state_table_update()
  br label %8

8:                                                ; preds = %0, %6, %4, %2
  ret void
}

declare dso_local i32 @ivt_idle_state_table_update(...) #1

declare dso_local i32 @bxt_idle_state_table_update(...) #1

declare dso_local i32 @sklh_idle_state_table_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
