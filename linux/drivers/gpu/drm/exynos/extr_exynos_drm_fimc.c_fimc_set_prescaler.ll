; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }
%struct.fimc_scaler = type { i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32 }

@EXYNOS_CITRGFMT = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_INROT90_CLOCKWISE = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE = common dso_local global i32 0, align 4
@FIMC_SHFACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get ratio horizontal.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get ratio vertical.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pre_dst_width[%d]pre_dst_height[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"hfactor[%d]vfactor[%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"hratio[%d]vratio[%d]up_h[%d]up_v[%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"shfactor[%d]\0A\00", align 1
@EXYNOS_CISCPRERATIO = common dso_local global i32 0, align 4
@EXYNOS_CISCPREDST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_context*, %struct.fimc_scaler*, %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect*)* @fimc_set_prescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_set_prescaler(%struct.fimc_context* %0, %struct.fimc_scaler* %1, %struct.drm_exynos_ipp_task_rect* %2, %struct.drm_exynos_ipp_task_rect* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_context*, align 8
  %7 = alloca %struct.fimc_scaler*, align 8
  %8 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %9 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %6, align 8
  store %struct.fimc_scaler* %1, %struct.fimc_scaler** %7, align 8
  store %struct.drm_exynos_ipp_task_rect* %2, %struct.drm_exynos_ipp_task_rect** %8, align 8
  store %struct.drm_exynos_ipp_task_rect* %3, %struct.drm_exynos_ipp_task_rect** %9, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %23 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %24 = call i32 @fimc_read(%struct.fimc_context* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @EXYNOS_CITRGFMT_INROT90_CLOCKWISE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %31 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %34 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  br label %43

36:                                               ; preds = %4
  %37 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %38 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %41 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %50 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %20, align 4
  %52 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %53 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %21, align 4
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %57 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %20, align 4
  %59 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %60 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sdiv i32 %63, %64
  %66 = sdiv i32 %65, 2
  %67 = call i32 @fls(i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @FIMC_SHFACTOR, align 4
  %70 = sdiv i32 %69, 2
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %74 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %195

79:                                               ; preds = %62
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %21, align 4
  %82 = sdiv i32 %80, %81
  %83 = sdiv i32 %82, 2
  %84 = call i32 @fls(i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @FIMC_SHFACTOR, align 4
  %87 = sdiv i32 %86, 2
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %91 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %195

96:                                               ; preds = %79
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %15, align 4
  %99 = ashr i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %16, align 4
  %102 = ashr i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %104 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %110 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %18, align 4
  %116 = shl i32 %115, 14
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %15, align 4
  %119 = shl i32 %117, %118
  %120 = sdiv i32 %116, %119
  %121 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %122 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %19, align 4
  %124 = shl i32 %123, 14
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %16, align 4
  %127 = shl i32 %125, %126
  %128 = sdiv i32 %124, %127
  %129 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %130 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp sge i32 %131, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 1, i32 0
  %136 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %137 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp sge i32 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %144 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %146 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %149 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %152 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %155 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.fimc_scaler*, %struct.fimc_scaler** %7, align 8
  %158 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %153, i32 %156, i32 %159)
  %161 = load i32, i32* @FIMC_SHFACTOR, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %161, %164
  store i32 %165, i32* %12, align 4
  %166 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %167 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @EXYNOS_CISCPRERATIO_SHFACTOR(i32 %171)
  %173 = load i32, i32* %15, align 4
  %174 = shl i32 1, %173
  %175 = call i32 @EXYNOS_CISCPRERATIO_PREHORRATIO(i32 %174)
  %176 = or i32 %172, %175
  %177 = load i32, i32* %16, align 4
  %178 = shl i32 1, %177
  %179 = call i32 @EXYNOS_CISCPRERATIO_PREVERRATIO(i32 %178)
  %180 = or i32 %176, %179
  store i32 %180, i32* %10, align 4
  %181 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @EXYNOS_CISCPRERATIO, align 4
  %184 = call i32 @fimc_write(%struct.fimc_context* %181, i32 %182, i32 %183)
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @EXYNOS_CISCPREDST_PREDSTWIDTH(i32 %185)
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @EXYNOS_CISCPREDST_PREDSTHEIGHT(i32 %187)
  %189 = or i32 %186, %188
  store i32 %189, i32* %10, align 4
  %190 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @EXYNOS_CISCPREDST, align 4
  %193 = call i32 @fimc_write(%struct.fimc_context* %190, i32 %191, i32 %192)
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %96, %89, %72
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i32 @EXYNOS_CISCPRERATIO_SHFACTOR(i32) #1

declare dso_local i32 @EXYNOS_CISCPRERATIO_PREHORRATIO(i32) #1

declare dso_local i32 @EXYNOS_CISCPRERATIO_PREVERRATIO(i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @EXYNOS_CISCPREDST_PREDSTWIDTH(i32) #1

declare dso_local i32 @EXYNOS_CISCPREDST_PREDSTHEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
