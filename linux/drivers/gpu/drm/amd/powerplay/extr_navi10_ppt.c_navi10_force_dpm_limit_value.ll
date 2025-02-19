; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_force_dpm_limit_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_force_dpm_limit_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_GFXCLK = common dso_local global i32 0, align 4
@SMU_MCLK = common dso_local global i32 0, align 4
@SMU_SOCCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @navi10_force_dpm_limit_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_force_dpm_limit_value(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %14 = load i32, i32* @SMU_GFXCLK, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @SMU_MCLK, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @SMU_SOCCLK, align 4
  store i32 %18, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %55, %2
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @smu_get_dpm_freq_range(%struct.smu_context* %29, i32 %30, i32* %8, i32* %9)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @smu_set_soft_freq_range(%struct.smu_context* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %52, %34
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @smu_get_dpm_freq_range(%struct.smu_context*, i32, i32*, i32*) #1

declare dso_local i32 @smu_set_soft_freq_range(%struct.smu_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
