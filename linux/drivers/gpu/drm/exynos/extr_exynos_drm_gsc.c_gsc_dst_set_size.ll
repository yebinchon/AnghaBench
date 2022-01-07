; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_dst_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_dst_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i64, %struct.gsc_scaler }
%struct.gsc_scaler = type { i64 }
%struct.exynos_drm_ipp_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32* }

@GSC_DSTIMG_OFFSET = common dso_local global i32 0, align 4
@GSC_SCALED_SIZE = common dso_local global i32 0, align 4
@GSC_DSTIMG_SIZE = common dso_local global i32 0, align 4
@GSC_DSTIMG_HEIGHT_MASK = common dso_local global i32 0, align 4
@GSC_DSTIMG_WIDTH_MASK = common dso_local global i32 0, align 4
@GSC_OUT_CON = common dso_local global i32 0, align 4
@GSC_OUT_RGB_TYPE_MASK = common dso_local global i32 0, align 4
@GSC_WIDTH_ITU_709 = common dso_local global i64 0, align 8
@GSC_OUT_RGB_HD_WIDE = common dso_local global i32 0, align 4
@GSC_OUT_RGB_HD_NARROW = common dso_local global i32 0, align 4
@GSC_OUT_RGB_SD_WIDE = common dso_local global i32 0, align 4
@GSC_OUT_RGB_SD_NARROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, %struct.exynos_drm_ipp_buffer*)* @gsc_dst_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_dst_set_size(%struct.gsc_context* %0, %struct.exynos_drm_ipp_buffer* %1) #0 {
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %5 = alloca %struct.gsc_scaler*, align 8
  %6 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %4, align 8
  %7 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %8 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %7, i32 0, i32 1
  store %struct.gsc_scaler* %8, %struct.gsc_scaler** %5, align 8
  %9 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GSC_DSTIMG_OFFSET_X(i32 %12)
  %14 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GSC_DSTIMG_OFFSET_Y(i32 %17)
  %19 = or i32 %13, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GSC_DSTIMG_OFFSET, align 4
  %22 = call i32 @gsc_write(i32 %20, i32 %21)
  %23 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %24 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @GSC_SCALED_WIDTH(i64 %31)
  %33 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @GSC_SCALED_HEIGHT(i64 %36)
  %38 = or i32 %32, %37
  store i32 %38, i32* %6, align 4
  br label %51

39:                                               ; preds = %2
  %40 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @GSC_SCALED_WIDTH(i64 %43)
  %45 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @GSC_SCALED_HEIGHT(i64 %48)
  %50 = or i32 %44, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %39, %27
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @GSC_SCALED_SIZE, align 4
  %54 = call i32 @gsc_write(i32 %52, i32 %53)
  %55 = load i32, i32* @GSC_DSTIMG_SIZE, align 4
  %56 = call i32 @gsc_read(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @GSC_DSTIMG_HEIGHT_MASK, align 4
  %58 = load i32, i32* @GSC_DSTIMG_WIDTH_MASK, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %68, %75
  %77 = call i32 @GSC_DSTIMG_WIDTH(i32 %76)
  %78 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @GSC_DSTIMG_HEIGHT(i32 %81)
  %83 = or i32 %77, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @GSC_DSTIMG_SIZE, align 4
  %88 = call i32 @gsc_write(i32 %86, i32 %87)
  %89 = load i32, i32* @GSC_OUT_CON, align 4
  %90 = call i32 @gsc_read(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @GSC_OUT_RGB_TYPE_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %96 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @GSC_WIDTH_ITU_709, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %51
  %102 = load %struct.gsc_scaler*, %struct.gsc_scaler** %5, align 8
  %103 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @GSC_OUT_RGB_HD_WIDE, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %114

110:                                              ; preds = %101
  %111 = load i32, i32* @GSC_OUT_RGB_HD_NARROW, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %106
  br label %129

115:                                              ; preds = %51
  %116 = load %struct.gsc_scaler*, %struct.gsc_scaler** %5, align 8
  %117 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @GSC_OUT_RGB_SD_WIDE, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %128

124:                                              ; preds = %115
  %125 = load i32, i32* @GSC_OUT_RGB_SD_NARROW, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @GSC_OUT_CON, align 4
  %132 = call i32 @gsc_write(i32 %130, i32 %131)
  ret void
}

declare dso_local i32 @GSC_DSTIMG_OFFSET_X(i32) #1

declare dso_local i32 @GSC_DSTIMG_OFFSET_Y(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @GSC_SCALED_WIDTH(i64) #1

declare dso_local i32 @GSC_SCALED_HEIGHT(i64) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @GSC_DSTIMG_WIDTH(i32) #1

declare dso_local i32 @GSC_DSTIMG_HEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
