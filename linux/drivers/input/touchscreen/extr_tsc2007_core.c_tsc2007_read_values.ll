; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_read_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_read_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc2007 = type { i32 }
%struct.ts_event = type { i8*, i8*, i8*, i8* }

@READ_Y = common dso_local global i32 0, align 4
@READ_X = common dso_local global i32 0, align 4
@READ_Z1 = common dso_local global i32 0, align 4
@READ_Z2 = common dso_local global i32 0, align 4
@PWRDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsc2007*, %struct.ts_event*)* @tsc2007_read_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc2007_read_values(%struct.tsc2007* %0, %struct.ts_event* %1) #0 {
  %3 = alloca %struct.tsc2007*, align 8
  %4 = alloca %struct.ts_event*, align 8
  store %struct.tsc2007* %0, %struct.tsc2007** %3, align 8
  store %struct.ts_event* %1, %struct.ts_event** %4, align 8
  %5 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %6 = load i32, i32* @READ_Y, align 4
  %7 = call i8* @tsc2007_xfer(%struct.tsc2007* %5, i32 %6)
  %8 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %9 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %11 = load i32, i32* @READ_X, align 4
  %12 = call i8* @tsc2007_xfer(%struct.tsc2007* %10, i32 %11)
  %13 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %14 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %16 = load i32, i32* @READ_Z1, align 4
  %17 = call i8* @tsc2007_xfer(%struct.tsc2007* %15, i32 %16)
  %18 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %19 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %21 = load i32, i32* @READ_Z2, align 4
  %22 = call i8* @tsc2007_xfer(%struct.tsc2007* %20, i32 %21)
  %23 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %24 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %26 = load i32, i32* @PWRDOWN, align 4
  %27 = call i8* @tsc2007_xfer(%struct.tsc2007* %25, i32 %26)
  ret void
}

declare dso_local i8* @tsc2007_xfer(%struct.tsc2007*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
