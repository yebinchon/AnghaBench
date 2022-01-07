; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_dst_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_dst_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_context = type { i32 }
%struct.exynos_drm_ipp_buffer = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@scaler_set_dst_base.bases = internal global [3 x i32] [i32 128, i32 130, i32 129], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_context*, %struct.exynos_drm_ipp_buffer*)* @scaler_set_dst_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_set_dst_base(%struct.scaler_context* %0, %struct.exynos_drm_ipp_buffer* %1) #0 {
  %3 = alloca %struct.scaler_context*, align 8
  %4 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.scaler_context* %0, %struct.scaler_context** %3, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %6
  %15 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* @scaler_set_dst_base.bases, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scaler_write(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @scaler_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
