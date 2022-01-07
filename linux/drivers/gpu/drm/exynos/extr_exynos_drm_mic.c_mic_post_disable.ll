; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.exynos_mic* }
%struct.exynos_mic = type { i64, i32 }

@mic_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @mic_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_post_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.exynos_mic*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %4, i32 0, i32 0
  %6 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  store %struct.exynos_mic* %6, %struct.exynos_mic** %3, align 8
  %7 = call i32 @mutex_lock(i32* @mic_mutex)
  %8 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %9 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %15 = call i32 @mic_set_path(%struct.exynos_mic* %14, i32 0)
  %16 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %17 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_put(i32 %18)
  %20 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = call i32 @mutex_unlock(i32* @mic_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mic_set_path(%struct.exynos_mic*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
