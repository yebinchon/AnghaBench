; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_task = type { i32, %struct.TYPE_4__, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp* }
%struct.TYPE_4__ = type { i32 }
%struct.exynos_drm_ipp_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.exynos_drm_ipp = type { i32, i32 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Checking task %pK\0A\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Task %pK: defined area is outside provided buffers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_CROP = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_ROTATE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_SCALE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_CONVERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Task %pK: hw capabilities exceeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Task %pK: all checks done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_ipp_task*)* @exynos_drm_ipp_task_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_ipp_task_check(%struct.exynos_drm_ipp_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_drm_ipp_task*, align 8
  %4 = alloca %struct.exynos_drm_ipp*, align 8
  %5 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %6 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.exynos_drm_ipp_task* %0, %struct.exynos_drm_ipp_task** %3, align 8
  %12 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %13 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %12, i32 0, i32 4
  %14 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %13, align 8
  store %struct.exynos_drm_ipp* %14, %struct.exynos_drm_ipp** %4, align 8
  %15 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %15, i32 0, i32 3
  store %struct.exynos_drm_ipp_buffer* %16, %struct.exynos_drm_ipp_buffer** %5, align 8
  %17 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %17, i32 0, i32 2
  store %struct.exynos_drm_ipp_buffer* %18, %struct.exynos_drm_ipp_buffer** %6, align 8
  %19 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @drm_rotation_90_or_270(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %30 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %33 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.exynos_drm_ipp_task* %32)
  %34 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UINT_MAX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %1
  %41 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %1
  %49 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UINT_MAX, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UINT_MAX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UINT_MAX, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %91 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %78
  %94 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %95 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %97, %101
  %103 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %104 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %102, %106
  br i1 %107, label %153, label %108

108:                                              ; preds = %93
  %109 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %114 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %112, %116
  %118 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %119 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %117, %121
  br i1 %122, label %153, label %123

123:                                              ; preds = %108
  %124 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %125 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %129 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %127, %131
  %133 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %134 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %132, %136
  br i1 %137, label %153, label %138

138:                                              ; preds = %123
  %139 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %140 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %144 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %142, %146
  %148 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %149 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %147, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %138, %123, %108, %93
  %154 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %155 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %158 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %156, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.exynos_drm_ipp_task* %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %314

161:                                              ; preds = %138
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %161
  %165 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %166 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %170 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %168, %172
  br i1 %173, label %207, label %174

174:                                              ; preds = %164
  %175 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %176 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %180 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %178, %182
  br i1 %183, label %207, label %184

184:                                              ; preds = %174, %161
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %208

187:                                              ; preds = %184
  %188 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %189 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %193 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %191, %195
  br i1 %196, label %207, label %197

197:                                              ; preds = %187
  %198 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %199 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %203 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %201, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %197, %187, %174, %164
  store i32 1, i32* %11, align 4
  br label %208

208:                                              ; preds = %207, %197, %184
  %209 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %4, align 8
  %210 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @DRM_EXYNOS_IPP_CAP_CROP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %239, label %215

215:                                              ; preds = %208
  %216 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %217 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %276, label %221

221:                                              ; preds = %215
  %222 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %223 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %276, label %227

227:                                              ; preds = %221
  %228 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %229 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %276, label %233

233:                                              ; preds = %227
  %234 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %235 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %276, label %239

239:                                              ; preds = %233, %208
  %240 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %4, align 8
  %241 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @DRM_EXYNOS_IPP_CAP_ROTATE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %239
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %276, label %249

249:                                              ; preds = %246, %239
  %250 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %4, align 8
  %251 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @DRM_EXYNOS_IPP_CAP_SCALE, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %249
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %276, label %259

259:                                              ; preds = %256, %249
  %260 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %4, align 8
  %261 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @DRM_EXYNOS_IPP_CAP_CONVERT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %284, label %266

266:                                              ; preds = %259
  %267 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %268 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %272 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %270, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %266, %256, %246, %233, %227, %221, %215
  %277 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %278 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %281 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %279, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.exynos_drm_ipp_task* %280)
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %2, align 4
  br label %314

284:                                              ; preds = %266, %259
  %285 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %286 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %287 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %288 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @exynos_drm_ipp_check_format(%struct.exynos_drm_ipp_task* %285, %struct.exynos_drm_ipp_buffer* %286, %struct.exynos_drm_ipp_buffer* %287, %struct.exynos_drm_ipp_buffer* %288, i32 %289, i32 %290)
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %284
  %295 = load i32, i32* %8, align 4
  store i32 %295, i32* %2, align 4
  br label %314

296:                                              ; preds = %284
  %297 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %298 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %299 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %5, align 8
  %300 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %6, align 8
  %301 = load i32, i32* %9, align 4
  %302 = call i32 @exynos_drm_ipp_check_format(%struct.exynos_drm_ipp_task* %297, %struct.exynos_drm_ipp_buffer* %298, %struct.exynos_drm_ipp_buffer* %299, %struct.exynos_drm_ipp_buffer* %300, i32 0, i32 %301)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %296
  %306 = load i32, i32* %8, align 4
  store i32 %306, i32* %2, align 4
  br label %314

307:                                              ; preds = %296
  %308 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %4, align 8
  %309 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %312 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %310, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.exynos_drm_ipp_task* %311)
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %2, align 4
  br label %314

314:                                              ; preds = %307, %305, %294, %276, %153
  %315 = load i32, i32* %2, align 4
  ret i32 %315
}

declare dso_local i32 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, %struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @exynos_drm_ipp_check_format(%struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
