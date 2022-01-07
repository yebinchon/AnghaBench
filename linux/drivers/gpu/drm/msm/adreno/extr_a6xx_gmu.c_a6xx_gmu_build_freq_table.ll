; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_build_freq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_build_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dev_pm_opp = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"The GMU frequency table is being truncated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i32)* @a6xx_gmu_build_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_build_freq_table(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_pm_opp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @dev_pm_opp_get_opp_count(%struct.device* %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i64 1, i64* %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i64*, i64** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  store i64 0, i64* %29, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %51, %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device* %35, i64* %11)
  store %struct.dev_pm_opp* %36, %struct.dev_pm_opp** %8, align 8
  %37 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %38 = call i64 @IS_ERR(%struct.dev_pm_opp* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %54

41:                                               ; preds = %34
  %42 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %43 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %42)
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %44, i64* %50, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %30

54:                                               ; preds = %40, %30
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @dev_pm_opp_get_opp_count(%struct.device*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(%struct.device*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
