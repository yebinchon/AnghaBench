; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2583.c_tsl2583_set_pm_runtime_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2583.c_tsl2583_set_pm_runtime_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2583_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsl2583_chip*, i32)* @tsl2583_set_pm_runtime_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2583_set_pm_runtime_busy(%struct.tsl2583_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.tsl2583_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tsl2583_chip* %0, %struct.tsl2583_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %3, align 8
  %10 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %3, align 8
  %18 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_put_noidle(i32* %20)
  br label %22

22:                                               ; preds = %16, %8
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %3, align 8
  %25 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_mark_last_busy(i32* %27)
  %29 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %3, align 8
  %30 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @pm_runtime_put_autosuspend(i32* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
