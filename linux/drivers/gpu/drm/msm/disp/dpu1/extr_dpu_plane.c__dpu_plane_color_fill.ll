; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_color_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_color_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_plane = type { %struct.TYPE_13__, %struct.TYPE_12__*, %struct.drm_plane }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)*, i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)*, i32 (%struct.TYPE_12__*, %struct.dpu_format*, i32, i64)*, i32 (%struct.TYPE_12__*, i32, i64)* }
%struct.dpu_format = type { i32 }
%struct.drm_plane = type { i32 }
%struct.dpu_plane_state = type { i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DRM_FORMAT_ABGR8888 = common dso_local global i32 0, align 4
@DPU_SSPP_SOLID_FILL = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_plane*, i32, i32)* @_dpu_plane_color_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_plane_color_fill(%struct.dpu_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_format*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.dpu_plane_state*, align 8
  store %struct.dpu_plane* %0, %struct.dpu_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %11 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %10, i32 0, i32 2
  store %struct.drm_plane* %11, %struct.drm_plane** %8, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dpu_plane_state* @to_dpu_plane_state(i32 %14)
  store %struct.dpu_plane_state* %15, %struct.dpu_plane_state** %9, align 8
  %16 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %17 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @DRM_FORMAT_ABGR8888, align 4
  %19 = call %struct.dpu_format* @dpu_get_dpu_format(i32 %18)
  store %struct.dpu_format* %19, %struct.dpu_format** %7, align 8
  %20 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %21 = icmp ne %struct.dpu_format* %20, null
  br i1 %21, label %22, label %178

22:                                               ; preds = %3
  %23 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %24 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load i32 (%struct.TYPE_12__*, i32, i64)*, i32 (%struct.TYPE_12__*, i32, i64)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_12__*, i32, i64)* %28, null
  br i1 %29, label %30, label %178

30:                                               ; preds = %22
  %31 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %32 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load i32 (%struct.TYPE_12__*, i32, i64)*, i32 (%struct.TYPE_12__*, i32, i64)** %35, align 8
  %37 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %38 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 16777215
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = shl i32 %43, 24
  %45 = or i32 %41, %44
  %46 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %47 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 %36(%struct.TYPE_12__* %39, i32 %45, i64 %48)
  %50 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %51 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %55 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %59 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = call i32 @drm_rect_width(i32* %60)
  %62 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %63 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %67 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = call i32 @drm_rect_height(i32* %68)
  %70 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %71 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %75 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %76 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %77 = call i32 @_dpu_plane_setup_scaler(%struct.dpu_plane* %74, %struct.dpu_plane_state* %75, %struct.dpu_format* %76, i32 1)
  %78 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %79 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = load i32 (%struct.TYPE_12__*, %struct.dpu_format*, i32, i64)*, i32 (%struct.TYPE_12__*, %struct.dpu_format*, i32, i64)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_12__*, %struct.dpu_format*, i32, i64)* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %30
  %86 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %87 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i32 (%struct.TYPE_12__*, %struct.dpu_format*, i32, i64)*, i32 (%struct.TYPE_12__*, %struct.dpu_format*, i32, i64)** %90, align 8
  %92 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %93 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load %struct.dpu_format*, %struct.dpu_format** %7, align 8
  %96 = load i32, i32* @DPU_SSPP_SOLID_FILL, align 4
  %97 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %98 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 %91(%struct.TYPE_12__* %94, %struct.dpu_format* %95, i32 %96, i64 %99)
  br label %101

101:                                              ; preds = %85, %30
  %102 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %103 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)** %106, align 8
  %108 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)* %107, null
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %111 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)** %114, align 8
  %116 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %117 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %120 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %119, i32 0, i32 0
  %121 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %122 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 %115(%struct.TYPE_12__* %118, %struct.TYPE_13__* %120, i64 %123)
  br label %125

125:                                              ; preds = %109, %101
  %126 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %127 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %130, align 8
  %132 = icmp ne i32 (%struct.TYPE_12__*, i32*)* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %125
  %134 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %135 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %138, align 8
  %140 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %141 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %144 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %143, i32 0, i32 2
  %145 = call i32 %139(%struct.TYPE_12__* %142, i32* %144)
  br label %146

146:                                              ; preds = %133, %125
  %147 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %148 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)** %151, align 8
  %153 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)* %152, null
  br i1 %153, label %154, label %177

154:                                              ; preds = %146
  %155 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %156 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @DPU_SSPP_RECT_1, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %162 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)** %165, align 8
  %167 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %168 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load %struct.dpu_plane*, %struct.dpu_plane** %4, align 8
  %171 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %170, i32 0, i32 0
  %172 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %173 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %172, i32 0, i32 2
  %174 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %9, align 8
  %175 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %174, i32 0, i32 1
  %176 = call i32 %166(%struct.TYPE_12__* %169, %struct.TYPE_13__* %171, i32* %173, i32* %175)
  br label %177

177:                                              ; preds = %160, %154, %146
  br label %178

178:                                              ; preds = %177, %22, %3
  ret i32 0
}

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(i32) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*) #1

declare dso_local %struct.dpu_format* @dpu_get_dpu_format(i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @drm_rect_height(i32*) #1

declare dso_local i32 @_dpu_plane_setup_scaler(%struct.dpu_plane*, %struct.dpu_plane_state*, %struct.dpu_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
