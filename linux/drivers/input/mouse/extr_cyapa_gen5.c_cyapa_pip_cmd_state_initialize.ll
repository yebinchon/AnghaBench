; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_cmd_state_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_cmd_state_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i32*, i32*, i32, i32*, i32, i32, i32, i32, i32 }

@CYAPA_PM_DEACTIVE = common dso_local global i32 0, align 4
@PIP_INVALID_CMD = common dso_local global i32 0, align 4
@UNINIT_PWR_MODE = common dso_local global i32 0, align 4
@UNINIT_SLEEP_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_cmd_state_initialize(%struct.cyapa* %0) #0 {
  %2 = alloca %struct.cyapa*, align 8
  %3 = alloca %struct.cyapa_pip_cmd_states*, align 8
  store %struct.cyapa* %0, %struct.cyapa** %2, align 8
  %4 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %5 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %6, %struct.cyapa_pip_cmd_states** %3, align 8
  %7 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %8 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %7, i32 0, i32 8
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %11 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %10, i32 0, i32 7
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  %13 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %14 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %13, i32 0, i32 6
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %17 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %16, i32 0, i32 5
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load i32, i32* @CYAPA_PM_DEACTIVE, align 4
  %20 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %21 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %23 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @PIP_INVALID_CMD, align 4
  %25 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %26 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %28 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %3, align 8
  %30 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @UNINIT_PWR_MODE, align 4
  %32 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %33 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @UNINIT_SLEEP_TIME, align 4
  %35 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %36 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
