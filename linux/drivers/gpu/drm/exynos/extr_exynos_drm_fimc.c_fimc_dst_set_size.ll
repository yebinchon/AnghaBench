; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }
%struct.exynos_drm_ipp_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i64, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"hsize[%d]vsize[%d]\0A\00", align 1
@EXYNOS_ORGOSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"x[%d]y[%d]w[%d]h[%d]\0A\00", align 1
@EXYNOS_CIGCTRL = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_CSC_MASK = common dso_local global i32 0, align 4
@FIMC_WIDTH_ITU_709 = common dso_local global i64 0, align 8
@EXYNOS_CIGCTRL_CSC_ITU709 = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_CSC_ITU601 = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_TARGETH_MASK = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_TARGETV_MASK = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE = common dso_local global i32 0, align 4
@EXYNOS_CITAREA = common dso_local global i32 0, align 4
@EXYNOS_CIOYOFF = common dso_local global i32 0, align 4
@EXYNOS_CIOCBOFF = common dso_local global i32 0, align 4
@EXYNOS_CIOCROFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, %struct.exynos_drm_ipp_buffer*)* @fimc_dst_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_dst_set_size(%struct.fimc_context* %0, %struct.exynos_drm_ipp_buffer* %1) #0 {
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %4, align 8
  %8 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = udiv i32 %13, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %23 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @EXYNOS_ORGOSIZE_HORIZONTAL(i32 %31)
  %33 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @EXYNOS_ORGOSIZE_VERTICAL(i32 %36)
  %38 = or i32 %32, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EXYNOS_ORGOSIZE, align 4
  %42 = call i32 @fimc_write(%struct.fimc_context* %39, i32 %40, i32 %41)
  %43 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %44 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53, i32 %57, i32 %61)
  %63 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %64 = load i32, i32* @EXYNOS_CIGCTRL, align 4
  %65 = call i32 @fimc_read(%struct.fimc_context* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @EXYNOS_CIGCTRL_CSC_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %71 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FIMC_WIDTH_ITU_709, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %2
  %77 = load i32, i32* @EXYNOS_CIGCTRL_CSC_ITU709, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %84

80:                                               ; preds = %2
  %81 = load i32, i32* @EXYNOS_CIGCTRL_CSC_ITU601, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @EXYNOS_CIGCTRL, align 4
  %88 = call i32 @fimc_write(%struct.fimc_context* %85, i32 %86, i32 %87)
  %89 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %90 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %91 = call i32 @fimc_read(%struct.fimc_context* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %93 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %94 = call i32 @fimc_read(%struct.fimc_context* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @EXYNOS_CITRGFMT_TARGETH_MASK, align 4
  %96 = load i32, i32* @EXYNOS_CITRGFMT_TARGETV_MASK, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %84
  %106 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @EXYNOS_CITRGFMT_TARGETHSIZE(i32 %109)
  %111 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %112 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @EXYNOS_CITRGFMT_TARGETVSIZE(i32 %114)
  %116 = or i32 %110, %115
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %133

119:                                              ; preds = %84
  %120 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %121 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @EXYNOS_CITRGFMT_TARGETHSIZE(i32 %123)
  %125 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %126 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @EXYNOS_CITRGFMT_TARGETVSIZE(i32 %128)
  %130 = or i32 %124, %129
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %119, %105
  %134 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %137 = call i32 @fimc_write(%struct.fimc_context* %134, i32 %135, i32 %136)
  %138 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %139 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %143 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %141, %145
  %147 = call i32 @EXYNOS_CITAREA_TARGET_AREA(i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @EXYNOS_CITAREA, align 4
  %151 = call i32 @fimc_write(%struct.fimc_context* %148, i32 %149, i32 %150)
  %152 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %153 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @EXYNOS_CIOYOFF_HORIZONTAL(i32 %155)
  %157 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %158 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @EXYNOS_CIOYOFF_VERTICAL(i32 %160)
  %162 = or i32 %156, %161
  store i32 %162, i32* %6, align 4
  %163 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @EXYNOS_CIOYOFF, align 4
  %166 = call i32 @fimc_write(%struct.fimc_context* %163, i32 %164, i32 %165)
  %167 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %168 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @EXYNOS_CIOCBOFF_HORIZONTAL(i32 %170)
  %172 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %173 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @EXYNOS_CIOCBOFF_VERTICAL(i32 %175)
  %177 = or i32 %171, %176
  store i32 %177, i32* %6, align 4
  %178 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @EXYNOS_CIOCBOFF, align 4
  %181 = call i32 @fimc_write(%struct.fimc_context* %178, i32 %179, i32 %180)
  %182 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %183 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @EXYNOS_CIOCROFF_HORIZONTAL(i32 %185)
  %187 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %188 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @EXYNOS_CIOCROFF_VERTICAL(i32 %190)
  %192 = or i32 %186, %191
  store i32 %192, i32* %6, align 4
  %193 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @EXYNOS_CIOCROFF, align 4
  %196 = call i32 @fimc_write(%struct.fimc_context* %193, i32 %194, i32 %195)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @EXYNOS_ORGOSIZE_HORIZONTAL(i32) #1

declare dso_local i32 @EXYNOS_ORGOSIZE_VERTICAL(i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @EXYNOS_CITRGFMT_TARGETHSIZE(i32) #1

declare dso_local i32 @EXYNOS_CITRGFMT_TARGETVSIZE(i32) #1

declare dso_local i32 @EXYNOS_CITAREA_TARGET_AREA(i32) #1

declare dso_local i32 @EXYNOS_CIOYOFF_HORIZONTAL(i32) #1

declare dso_local i32 @EXYNOS_CIOYOFF_VERTICAL(i32) #1

declare dso_local i32 @EXYNOS_CIOCBOFF_HORIZONTAL(i32) #1

declare dso_local i32 @EXYNOS_CIOCBOFF_VERTICAL(i32) #1

declare dso_local i32 @EXYNOS_CIOCROFF_HORIZONTAL(i32) #1

declare dso_local i32 @EXYNOS_CIOCROFF_VERTICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
