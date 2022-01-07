; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_release_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_release_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_buffer = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_ipp_buffer*)* @exynos_drm_ipp_task_release_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_ipp_task_release_buf(%struct.exynos_drm_ipp_buffer* %0) #0 {
  %2 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos_drm_ipp_buffer* %0, %struct.exynos_drm_ipp_buffer** %2, align 8
  %4 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @exynos_drm_gem_put(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %12

32:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @exynos_drm_gem_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
