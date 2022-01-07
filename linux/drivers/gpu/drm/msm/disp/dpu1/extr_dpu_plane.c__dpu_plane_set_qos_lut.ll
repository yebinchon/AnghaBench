; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_qos_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_qos_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.drm_framebuffer = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dpu_plane = type { %struct.TYPE_18__, %struct.TYPE_17__*, i32, i64, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.dpu_format = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@DPU_QOS_LUT_USAGE_NRT = common dso_local global i64 0, align 8
@DPU_QOS_LUT_USAGE_LINEAR = common dso_local global i64 0, align 8
@DPU_QOS_LUT_USAGE_MACROTILE = common dso_local global i64 0, align 8
@SSPP_VIG0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"plane%u: pnum:%d fmt: %4.4s rt:%d fl:%u lut:0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_framebuffer*)* @_dpu_plane_set_qos_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_set_qos_lut(%struct.drm_plane* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.dpu_plane*, align 8
  %6 = alloca %struct.dpu_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %10)
  store %struct.dpu_plane* %11, %struct.dpu_plane** %5, align 8
  store %struct.dpu_format* null, %struct.dpu_format** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %13 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @DPU_QOS_LUT_USAGE_NRT, align 8
  store i64 %17, i64* %9, align 8
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.dpu_format* @dpu_get_dpu_format_ext(i32 %23, i32 %26)
  store %struct.dpu_format* %27, %struct.dpu_format** %6, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %29 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %30 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %31 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = call i32 @drm_rect_width(i32* %32)
  %34 = call i64 @_dpu_plane_calc_fill_level(%struct.drm_plane* %28, %struct.dpu_format* %29, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %36 = icmp ne %struct.dpu_format* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %18
  %38 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %39 = call i64 @DPU_FORMAT_IS_LINEAR(%struct.dpu_format* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @DPU_QOS_LUT_USAGE_LINEAR, align 8
  store i64 %42, i64* %9, align 8
  br label %45

43:                                               ; preds = %37, %18
  %44 = load i64, i64* @DPU_QOS_LUT_USAGE_MACROTILE, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %16
  %47 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %48 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %47, i32 0, i32 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @_dpu_plane_get_qos_lut(i32* %54, i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %59 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %62 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SSPP_VIG0, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %67 = icmp ne %struct.dpu_format* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %46
  %69 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %70 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %46
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi i32 [ %72, %68 ], [ 0, %73 ]
  %76 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %77 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @trace_dpu_perf_set_qos_luts(i64 %65, i32 %75, i32 %78, i64 %79, i32 %80, i64 %81)
  %83 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %84 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %88 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SSPP_VIG0, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %93 = icmp ne %struct.dpu_format* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %74
  %95 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %96 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = bitcast i32* %97 to i8*
  br label %100

99:                                               ; preds = %74
  br label %100

100:                                              ; preds = %99, %94
  %101 = phi i8* [ %98, %94 ], [ null, %99 ]
  %102 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %103 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %91, i8* %101, i32 %104, i64 %105, i32 %106)
  %108 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %109 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %112, align 8
  %114 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %115 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %118 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %117, i32 0, i32 0
  %119 = call i32 %113(%struct.TYPE_17__* %116, %struct.TYPE_18__* %118)
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_format* @dpu_get_dpu_format_ext(i32, i32) #1

declare dso_local i64 @_dpu_plane_calc_fill_level(%struct.drm_plane*, %struct.dpu_format*, i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i64 @DPU_FORMAT_IS_LINEAR(%struct.dpu_format*) #1

declare dso_local i32 @_dpu_plane_get_qos_lut(i32*, i64) #1

declare dso_local i32 @trace_dpu_perf_set_qos_luts(i64, i32, i32, i64, i32, i64) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i64, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
