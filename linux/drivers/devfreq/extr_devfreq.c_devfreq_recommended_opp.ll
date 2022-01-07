; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_recommended_opp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_recommended_opp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_opp = type { i32 }
%struct.device = type { i32 }

@DEVFREQ_FLAG_LEAST_UPPER_BOUND = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_pm_opp*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @DEVFREQ_FLAG_LEAST_UPPER_BOUND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device* %13, i64* %14)
  store %struct.dev_pm_opp* %15, %struct.dev_pm_opp** %7, align 8
  %16 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dev_pm_opp* @ERR_PTR(i32 %18)
  %20 = icmp eq %struct.dev_pm_opp* %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device* %22, i64* %23)
  store %struct.dev_pm_opp* %24, %struct.dev_pm_opp** %7, align 8
  br label %25

25:                                               ; preds = %21, %12
  br label %40

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device* %27, i64* %28)
  store %struct.dev_pm_opp* %29, %struct.dev_pm_opp** %7, align 8
  %30 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %31 = load i32, i32* @ERANGE, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dev_pm_opp* @ERR_PTR(i32 %32)
  %34 = icmp eq %struct.dev_pm_opp* %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device* %36, i64* %37)
  store %struct.dev_pm_opp* %38, %struct.dev_pm_opp** %7, align 8
  br label %39

39:                                               ; preds = %35, %26
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  ret %struct.dev_pm_opp* %41
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device*, i64*) #1

declare dso_local %struct.dev_pm_opp* @ERR_PTR(i32) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
