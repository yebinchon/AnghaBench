; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_set_pip_pm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_set_pip_pm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa*, i32)* @cyapa_set_pip_pm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_set_pip_pm_state(%struct.cyapa* %0, i32 %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa_pip_cmd_states*, align 8
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %7 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %8, %struct.cyapa_pip_cmd_states** %5, align 8
  %9 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %5, align 8
  %10 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %5, align 8
  %14 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %5, align 8
  %16 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
