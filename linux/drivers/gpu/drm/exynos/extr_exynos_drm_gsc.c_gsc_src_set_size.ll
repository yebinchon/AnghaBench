; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { %struct.gsc_scaler }
%struct.gsc_scaler = type { i64 }
%struct.exynos_drm_ipp_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32* }

@GSC_SRCIMG_OFFSET = common dso_local global i32 0, align 4
@GSC_CROPPED_SIZE = common dso_local global i32 0, align 4
@GSC_SRCIMG_SIZE = common dso_local global i32 0, align 4
@GSC_SRCIMG_HEIGHT_MASK = common dso_local global i32 0, align 4
@GSC_SRCIMG_WIDTH_MASK = common dso_local global i32 0, align 4
@GSC_IN_CON = common dso_local global i32 0, align 4
@GSC_IN_RGB_TYPE_MASK = common dso_local global i32 0, align 4
@GSC_WIDTH_ITU_709 = common dso_local global i64 0, align 8
@GSC_IN_RGB_HD_WIDE = common dso_local global i32 0, align 4
@GSC_IN_RGB_HD_NARROW = common dso_local global i32 0, align 4
@GSC_IN_RGB_SD_WIDE = common dso_local global i32 0, align 4
@GSC_IN_RGB_SD_NARROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, %struct.exynos_drm_ipp_buffer*)* @gsc_src_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_src_set_size(%struct.gsc_context* %0, %struct.exynos_drm_ipp_buffer* %1) #0 {
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %5 = alloca %struct.gsc_scaler*, align 8
  %6 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %4, align 8
  %7 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %8 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %7, i32 0, i32 0
  store %struct.gsc_scaler* %8, %struct.gsc_scaler** %5, align 8
  %9 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @GSC_SRCIMG_OFFSET_X(i32 %12)
  %14 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GSC_SRCIMG_OFFSET_Y(i32 %17)
  %19 = or i32 %13, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GSC_SRCIMG_OFFSET, align 4
  %22 = call i32 @gsc_write(i32 %20, i32 %21)
  %23 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @GSC_CROPPED_WIDTH(i64 %26)
  %28 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GSC_CROPPED_HEIGHT(i32 %31)
  %33 = or i32 %27, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GSC_CROPPED_SIZE, align 4
  %36 = call i32 @gsc_write(i32 %34, i32 %35)
  %37 = load i32, i32* @GSC_SRCIMG_SIZE, align 4
  %38 = call i32 @gsc_read(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @GSC_SRCIMG_HEIGHT_MASK, align 4
  %40 = load i32, i32* @GSC_SRCIMG_WIDTH_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %50, %57
  %59 = call i32 @GSC_SRCIMG_WIDTH(i32 %58)
  %60 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @GSC_SRCIMG_HEIGHT(i32 %63)
  %65 = or i32 %59, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @GSC_SRCIMG_SIZE, align 4
  %70 = call i32 @gsc_write(i32 %68, i32 %69)
  %71 = load i32, i32* @GSC_IN_CON, align 4
  %72 = call i32 @gsc_read(i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @GSC_IN_RGB_TYPE_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @GSC_WIDTH_ITU_709, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %2
  %84 = load %struct.gsc_scaler*, %struct.gsc_scaler** %5, align 8
  %85 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @GSC_IN_RGB_HD_WIDE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @GSC_IN_RGB_HD_NARROW, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %111

97:                                               ; preds = %2
  %98 = load %struct.gsc_scaler*, %struct.gsc_scaler** %5, align 8
  %99 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @GSC_IN_RGB_SD_WIDE, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %110

106:                                              ; preds = %97
  %107 = load i32, i32* @GSC_IN_RGB_SD_NARROW, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %96
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @GSC_IN_CON, align 4
  %114 = call i32 @gsc_write(i32 %112, i32 %113)
  ret void
}

declare dso_local i32 @GSC_SRCIMG_OFFSET_X(i32) #1

declare dso_local i32 @GSC_SRCIMG_OFFSET_Y(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @GSC_CROPPED_WIDTH(i64) #1

declare dso_local i32 @GSC_CROPPED_HEIGHT(i32) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @GSC_SRCIMG_WIDTH(i32) #1

declare dso_local i32 @GSC_SRCIMG_HEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
