; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mic = type { i32, i32, i64 }

@DSD_CFG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mic: Failed to read system register\0A\00", align 1
@MIC0_I80_MUX = common dso_local global i32 0, align 4
@MIC0_RGB_MUX = common dso_local global i32 0, align 4
@MIC0_ON_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_mic*, i32)* @mic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_set_path(%struct.exynos_mic* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_mic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exynos_mic* %0, %struct.exynos_mic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DSD_CFG_MUX, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %6)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DRM_DEV_ERROR(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %24 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @MIC0_I80_MUX, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @MIC0_RGB_MUX, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @MIC0_ON_MUX, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %19
  %40 = load i32, i32* @MIC0_RGB_MUX, align 4
  %41 = load i32, i32* @MIC0_I80_MUX, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MIC0_ON_MUX, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %39, %35
  %49 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DSD_CFG_MUX, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @regmap_write(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %59 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @DRM_DEV_ERROR(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %14, %57, %48
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
