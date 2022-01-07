; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_set_freq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_set_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { %struct.TYPE_2__, %struct.devfreq_dev_profile* }
%struct.TYPE_2__ = type { i32 }
%struct.devfreq_dev_profile = type { i32, i64* }
%struct.dev_pm_opp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*)* @set_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_freq_table(%struct.devfreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq*, align 8
  %4 = alloca %struct.devfreq_dev_profile*, align 8
  %5 = alloca %struct.dev_pm_opp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %3, align 8
  %9 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %10 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %9, i32 0, i32 1
  %11 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %10, align 8
  store %struct.devfreq_dev_profile* %11, %struct.devfreq_dev_profile** %4, align 8
  %12 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %13 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_pm_opp_get_opp_count(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %25 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %27 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %31 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64* @devm_kcalloc(i32 %29, i32 %32, i32 8, i32 %33)
  %35 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %36 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %35, i32 0, i32 1
  store i64* %34, i64** %36, align 8
  %37 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %38 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %22
  %42 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %43 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %91

46:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %50 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %55 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32 %57, i64* %6)
  store %struct.dev_pm_opp* %58, %struct.dev_pm_opp** %5, align 8
  %59 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %60 = call i64 @IS_ERR(%struct.dev_pm_opp* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %64 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %68 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @devm_kfree(i32 %66, i64* %69)
  %71 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %72 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %74 = call i32 @PTR_ERR(%struct.dev_pm_opp* %73)
  store i32 %74, i32* %2, align 4
  br label %91

75:                                               ; preds = %53
  %76 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %5, align 8
  %77 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %76)
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %4, align 8
  %80 = getelementptr inbounds %struct.devfreq_dev_profile, %struct.devfreq_dev_profile* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %78, i64* %84, align 8
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %47

90:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %62, %41, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @dev_pm_opp_get_opp_count(i32) #1

declare dso_local i64* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @devm_kfree(i32, i64*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
