; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.exynos_mic* }
%struct.exynos_mic = type { i32, i32, i32 }

@mic_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Failed to reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @mic_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.exynos_mic*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %5, i32 0, i32 0
  %7 = load %struct.exynos_mic*, %struct.exynos_mic** %6, align 8
  store %struct.exynos_mic* %7, %struct.exynos_mic** %3, align 8
  %8 = call i32 @mutex_lock(i32* @mic_mutex)
  %9 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %57

22:                                               ; preds = %14
  %23 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %24 = call i32 @mic_set_path(%struct.exynos_mic* %23, i32 1)
  %25 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %26 = call i32 @mic_sw_reset(%struct.exynos_mic* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %31 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DRM_DEV_ERROR(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %52

34:                                               ; preds = %22
  %35 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %36 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %41 = call i32 @mic_set_porch_timing(%struct.exynos_mic* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %44 = call i32 @mic_set_img_size(%struct.exynos_mic* %43)
  %45 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %46 = call i32 @mic_set_output_timing(%struct.exynos_mic* %45)
  %47 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %48 = call i32 @mic_set_reg_on(%struct.exynos_mic* %47, i32 1)
  %49 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = call i32 @mutex_unlock(i32* @mic_mutex)
  br label %59

52:                                               ; preds = %29
  %53 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %54 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pm_runtime_put(i32 %55)
  br label %57

57:                                               ; preds = %52, %21, %13
  %58 = call i32 @mutex_unlock(i32* @mic_mutex)
  br label %59

59:                                               ; preds = %57, %42
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mic_set_path(%struct.exynos_mic*, i32) #1

declare dso_local i32 @mic_sw_reset(%struct.exynos_mic*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @mic_set_porch_timing(%struct.exynos_mic*) #1

declare dso_local i32 @mic_set_img_size(%struct.exynos_mic*) #1

declare dso_local i32 @mic_set_output_timing(%struct.exynos_mic*) #1

declare dso_local i32 @mic_set_reg_on(%struct.exynos_mic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
