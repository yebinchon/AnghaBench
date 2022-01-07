; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_wait_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_wait_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@pmu_state = common dso_local global i64 0, align 8
@uninitialized = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@locked = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_wait_complete(%struct.adb_request* %0) #0 {
  %2 = alloca %struct.adb_request*, align 8
  store %struct.adb_request* %0, %struct.adb_request** %2, align 8
  %3 = load i64, i64* @pmu_state, align 8
  %4 = load i64, i64* @uninitialized, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i64, i64* @pmu_state, align 8
  %10 = load i64, i64* @idle, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* @pmu_state, align 8
  %14 = load i64, i64* @locked, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %18 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ true, %12 ], [ %21, %16 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @via_pmu_interrupt(i32 0, i32* null)
  br label %8

26:                                               ; preds = %6, %22
  ret void
}

declare dso_local i32 @via_pmu_interrupt(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
