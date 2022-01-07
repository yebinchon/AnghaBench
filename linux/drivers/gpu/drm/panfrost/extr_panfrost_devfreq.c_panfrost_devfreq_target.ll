; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.panfrost_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dev_pm_opp = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Cannot set voltage %lu uV\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot set frequency %lu (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i32)* @panfrost_devfreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_devfreq_target(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panfrost_device*, align 8
  %9 = alloca %struct.dev_pm_opp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @to_platform_device(%struct.device* %14)
  %16 = call %struct.panfrost_device* @platform_get_drvdata(i32 %15)
  store %struct.panfrost_device* %16, %struct.panfrost_device** %8, align 8
  %17 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %18 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %21, i64* %22, i32 %23)
  store %struct.dev_pm_opp* %24, %struct.dev_pm_opp** %9, align 8
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %26 = call i64 @IS_ERR(%struct.dev_pm_opp* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.dev_pm_opp* %29)
  store i32 %30, i32* %4, align 4
  br label %114

31:                                               ; preds = %3
  %32 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %33 = call i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %35 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %37 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %36)
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %114

42:                                               ; preds = %31
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %48 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @regulator_set_voltage(i32 %49, i64 %50, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %4, align 4
  br label %114

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %63 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @clk_set_rate(i32 %64, i64 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %71, i32 %72)
  %74 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %75 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %78 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %82 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @regulator_set_voltage(i32 %76, i64 %80, i64 %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %4, align 4
  br label %114

87:                                               ; preds = %61
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %93 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @regulator_set_voltage(i32 %94, i64 %95, i64 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %100, %91
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %108 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %112 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %105, %69, %55, %41, %28
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.panfrost_device* @platform_get_drvdata(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @regulator_set_voltage(i32, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
