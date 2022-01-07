; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_find_available_min_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_find_available_min_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dev_pm_opp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.devfreq*)* @find_available_min_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_available_min_freq(%struct.devfreq* %0) #0 {
  %2 = alloca %struct.devfreq*, align 8
  %3 = alloca %struct.dev_pm_opp*, align 8
  %4 = alloca i64, align 8
  store %struct.devfreq* %0, %struct.devfreq** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %6 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32 %8, i64* %4)
  store %struct.dev_pm_opp* %9, %struct.dev_pm_opp** %3, align 8
  %10 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %11 = call i64 @IS_ERR(%struct.dev_pm_opp* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %16 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %15)
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i64, i64* %4, align 8
  ret i64 %18
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
