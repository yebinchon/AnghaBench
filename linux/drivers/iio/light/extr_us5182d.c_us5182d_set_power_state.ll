; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@US5182D_ONESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*, i32)* @us5182d_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_set_power_state(%struct.us5182d_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.us5182d_data* %0, %struct.us5182d_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %8 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @US5182D_ONESHOT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %18 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_get_sync(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %26 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_put_noidle(i32* %28)
  br label %30

30:                                               ; preds = %24, %16
  br label %42

31:                                               ; preds = %13
  %32 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %33 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_mark_last_busy(i32* %35)
  %37 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %38 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_put_autosuspend(i32* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %31, %30
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
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
