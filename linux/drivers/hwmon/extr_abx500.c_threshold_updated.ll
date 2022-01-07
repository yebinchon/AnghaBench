; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abx500.c_threshold_updated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abx500.c_threshold_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_temp = type { i32, i64*, i64*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"No active thresholds.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_temp*)* @threshold_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threshold_updated(%struct.abx500_temp* %0) #0 {
  %2 = alloca %struct.abx500_temp*, align 8
  %3 = alloca i32, align 4
  store %struct.abx500_temp* %0, %struct.abx500_temp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %7 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %12 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %10
  %20 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %21 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19, %10
  %29 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %30 = call i32 @schedule_monitor(%struct.abx500_temp* %29)
  br label %46

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  %36 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %37 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %42 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %41, i32 0, i32 4
  %43 = call i32 @cancel_delayed_work_sync(i32* %42)
  %44 = load %struct.abx500_temp*, %struct.abx500_temp** %2, align 8
  %45 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %44, i32 0, i32 3
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %35, %28
  ret void
}

declare dso_local i32 @schedule_monitor(%struct.abx500_temp*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
