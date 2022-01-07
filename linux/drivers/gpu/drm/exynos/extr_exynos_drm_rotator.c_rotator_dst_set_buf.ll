; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_dst_set_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_dst_set_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rot_context = type { i32 }
%struct.exynos_drm_ipp_buffer = type { i32*, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@ROT_DST_BUF_SIZE = common dso_local global i32 0, align 4
@ROT_DST_CROP_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rot_context*, %struct.exynos_drm_ipp_buffer*)* @rotator_dst_set_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotator_dst_set_buf(%struct.rot_context* %0, %struct.exynos_drm_ipp_buffer* %1) #0 {
  %3 = alloca %struct.rot_context*, align 8
  %4 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.rot_context* %0, %struct.rot_context** %3, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %4, align 8
  %6 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ROT_SET_BUF_SIZE_H(i32 %9)
  %11 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %16, %23
  %25 = call i32 @ROT_SET_BUF_SIZE_W(i32 %24)
  %26 = or i32 %10, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ROT_DST_BUF_SIZE, align 4
  %29 = call i32 @rot_write(i32 %27, i32 %28)
  %30 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ROT_CROP_POS_Y(i32 %33)
  %35 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ROT_CROP_POS_X(i32 %38)
  %40 = or i32 %34, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ROT_DST_CROP_POS, align 4
  %43 = call i32 @rot_write(i32 %41, i32 %42)
  %44 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ROT_DST_BUF_ADDR(i32 0)
  %50 = call i32 @rot_write(i32 %48, i32 %49)
  %51 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ROT_DST_BUF_ADDR(i32 1)
  %57 = call i32 @rot_write(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @ROT_SET_BUF_SIZE_H(i32) #1

declare dso_local i32 @ROT_SET_BUF_SIZE_W(i32) #1

declare dso_local i32 @rot_write(i32, i32) #1

declare dso_local i32 @ROT_CROP_POS_Y(i32) #1

declare dso_local i32 @ROT_CROP_POS_X(i32) #1

declare dso_local i32 @ROT_DST_BUF_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
