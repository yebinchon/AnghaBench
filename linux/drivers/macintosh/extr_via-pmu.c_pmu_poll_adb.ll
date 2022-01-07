; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_poll_adb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_poll_adb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmu_state = common dso_local global i64 0, align 8
@uninitialized = common dso_local global i64 0, align 8
@disable_poll = common dso_local global i64 0, align 8
@adb_int_pending = common dso_local global i32 0, align 4
@pmu_suspended = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@req_awaiting_reply = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_poll_adb() #0 {
  %1 = load i64, i64* @pmu_state, align 8
  %2 = load i64, i64* @uninitialized, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %29

5:                                                ; preds = %0
  %6 = load i64, i64* @disable_poll, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %29

9:                                                ; preds = %5
  store i32 1, i32* @adb_int_pending, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = call i32 @via_pmu_interrupt(i32 0, i32* null)
  br label %12

12:                                               ; preds = %10
  %13 = load i64, i64* @pmu_suspended, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* @adb_int_pending, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @pmu_state, align 8
  %20 = load i64, i64* @idle, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @req_awaiting_reply, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %18, %15
  %26 = phi i1 [ true, %18 ], [ true, %15 ], [ %24, %22 ]
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i1 [ false, %12 ], [ %26, %25 ]
  br i1 %28, label %10, label %29

29:                                               ; preds = %4, %8, %27
  ret void
}

declare dso_local i32 @via_pmu_interrupt(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
