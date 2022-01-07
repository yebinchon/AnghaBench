; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_danger_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_danger_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.drm_framebuffer = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.dpu_plane = type { %struct.TYPE_16__, %struct.TYPE_15__*, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i8** }
%struct.dpu_format = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@DPU_QOS_LUT_USAGE_NRT = common dso_local global i64 0, align 8
@DPU_QOS_LUT_USAGE_LINEAR = common dso_local global i64 0, align 8
@DPU_QOS_LUT_USAGE_MACROTILE = common dso_local global i64 0, align 8
@SSPP_VIG0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"plane%u: pnum:%d fmt: %4.4s mode:%d luts[0x%x, 0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_framebuffer*)* @_dpu_plane_set_danger_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_set_danger_lut(%struct.drm_plane* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.dpu_plane*, align 8
  %6 = alloca %struct.dpu_format*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %9)
  store %struct.dpu_plane* %10, %struct.dpu_plane** %5, align 8
  store %struct.dpu_format* null, %struct.dpu_format** %6, align 8
  %11 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %12 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %17 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %16, i32 0, i32 3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* @DPU_QOS_LUT_USAGE_NRT, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %26 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %25, i32 0, i32 3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @DPU_QOS_LUT_USAGE_NRT, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  br label %89

34:                                               ; preds = %2
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.dpu_format* @dpu_get_dpu_format_ext(i32 %39, i32 %42)
  store %struct.dpu_format* %43, %struct.dpu_format** %6, align 8
  %44 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %45 = icmp ne %struct.dpu_format* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %34
  %47 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %48 = call i64 @DPU_FORMAT_IS_LINEAR(%struct.dpu_format* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %52 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %51, i32 0, i32 3
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* @DPU_QOS_LUT_USAGE_LINEAR, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %7, align 8
  %60 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %61 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @DPU_QOS_LUT_USAGE_LINEAR, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %8, align 8
  br label %88

69:                                               ; preds = %46, %34
  %70 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %71 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @DPU_QOS_LUT_USAGE_MACROTILE, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %7, align 8
  %79 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %80 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %79, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i64, i64* @DPU_QOS_LUT_USAGE_MACROTILE, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %69, %50
  br label %89

89:                                               ; preds = %88, %15
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %92 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %96 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %99 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SSPP_VIG0, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %104 = icmp ne %struct.dpu_format* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %89
  %106 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %107 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %111

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %105
  %112 = phi i32 [ %109, %105 ], [ 0, %110 ]
  %113 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %114 = icmp ne %struct.dpu_format* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %117 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  br label %120

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %115
  %121 = phi i32 [ %118, %115 ], [ 0, %119 ]
  %122 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %123 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %127 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @trace_dpu_perf_set_danger_luts(i64 %102, i32 %112, i32 %121, i8* %125, i8* %129)
  %131 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %132 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %136 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SSPP_VIG0, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %141 = icmp ne %struct.dpu_format* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %120
  %143 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %144 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = bitcast i32* %145 to i8*
  br label %148

147:                                              ; preds = %120
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i8* [ %146, %142 ], [ null, %147 ]
  %150 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %151 = icmp ne %struct.dpu_format* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %154 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i32 [ %155, %152 ], [ -1, %156 ]
  %159 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %160 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %164 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %134, i64 %139, i8* %149, i32 %158, i8* %162, i8* %166)
  %168 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %169 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %168, i32 0, i32 1
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)** %172, align 8
  %174 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %175 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = load %struct.dpu_plane*, %struct.dpu_plane** %5, align 8
  %178 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %177, i32 0, i32 0
  %179 = call i32 %173(%struct.TYPE_15__* %176, %struct.TYPE_16__* %178)
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_format* @dpu_get_dpu_format_ext(i32, i32) #1

declare dso_local i64 @DPU_FORMAT_IS_LINEAR(%struct.dpu_format*) #1

declare dso_local i32 @trace_dpu_perf_set_danger_luts(i64, i32, i32, i8*, i8*) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i64, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
