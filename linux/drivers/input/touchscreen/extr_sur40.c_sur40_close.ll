; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.sur40_state* }
%struct.sur40_state = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @sur40_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sur40_close(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.sur40_state*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %4 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %4, i32 0, i32 0
  %6 = load %struct.sur40_state*, %struct.sur40_state** %5, align 8
  store %struct.sur40_state* %6, %struct.sur40_state** %3, align 8
  %7 = load %struct.sur40_state*, %struct.sur40_state** %3, align 8
  %8 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
