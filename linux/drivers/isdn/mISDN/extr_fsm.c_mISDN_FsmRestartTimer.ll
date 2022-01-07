; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_fsm.c_mISDN_FsmRestartTimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_fsm.c_mISDN_FsmRestartTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmTimer = type { i32, %struct.TYPE_5__, i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*, i64, i32, i32)*, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mISDN_FsmRestartTimer(%struct.FsmTimer* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.FsmTimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.FsmTimer* %0, %struct.FsmTimer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.FsmTimer*, %struct.FsmTimer** %6, align 8
  %12 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %11, i32 0, i32 1
  %13 = call i64 @timer_pending(%struct.TYPE_5__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.FsmTimer*, %struct.FsmTimer** %6, align 8
  %17 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %16, i32 0, i32 1
  %18 = call i32 @del_timer(%struct.TYPE_5__* %17)
  br label %19

19:                                               ; preds = %15, %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.FsmTimer*, %struct.FsmTimer** %6, align 8
  %22 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.FsmTimer*, %struct.FsmTimer** %6, align 8
  %25 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 1000
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %26, %31
  %33 = load %struct.FsmTimer*, %struct.FsmTimer** %6, align 8
  %34 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.FsmTimer*, %struct.FsmTimer** %6, align 8
  %37 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %36, i32 0, i32 1
  %38 = call i32 @add_timer(%struct.TYPE_5__* %37)
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
