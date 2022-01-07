; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }
%struct.exynos_drm_ipp_buffer = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, i32, %struct.exynos_drm_ipp_buffer*)* @gsc_src_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_src_set_addr(%struct.gsc_context* %0, i32 %1, %struct.exynos_drm_ipp_buffer* %2) #0 {
  %4 = alloca %struct.gsc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  store %struct.gsc_context* %0, %struct.gsc_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.exynos_drm_ipp_buffer* %2, %struct.exynos_drm_ipp_buffer** %6, align 8
  %7 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GSC_IN_BASE_ADDR_Y(i32 %12)
  %14 = call i32 @gsc_write(i32 %11, i32 %13)
  %15 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @GSC_IN_BASE_ADDR_CB(i32 %20)
  %22 = call i32 @gsc_write(i32 %19, i32 %21)
  %23 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @GSC_IN_BASE_ADDR_CR(i32 %28)
  %30 = call i32 @gsc_write(i32 %27, i32 %29)
  %31 = load %struct.gsc_context*, %struct.gsc_context** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @gsc_src_set_buf_seq(%struct.gsc_context* %31, i32 %32, i32 1)
  ret void
}

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @GSC_IN_BASE_ADDR_Y(i32) #1

declare dso_local i32 @GSC_IN_BASE_ADDR_CB(i32) #1

declare dso_local i32 @GSC_IN_BASE_ADDR_CR(i32) #1

declare dso_local i32 @gsc_src_set_buf_seq(%struct.gsc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
