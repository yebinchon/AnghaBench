; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_init_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_init_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.drm_framebuffer* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.komeda_crtc_state = type { i64 }
%struct.komeda_data_flow_cfg = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.komeda_plane = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32 }
%struct.komeda_format_caps = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.komeda_format_caps* }
%struct.TYPE_9__ = type { %struct.komeda_pipeline* }

@.str = private unnamed_addr constant [38 x i8] c"%s zorder:%d < max_slave_zorder: %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"rotation(0x%x) isn't supported by %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_plane_init_data_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_plane_init_data_flow(%struct.drm_plane_state* %0, %struct.komeda_crtc_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.komeda_plane*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.komeda_format_caps*, align 8
  %11 = alloca %struct.komeda_pipeline*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %5, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 12
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call %struct.komeda_plane* @to_kplane(%struct.TYPE_7__* %14)
  store %struct.komeda_plane* %15, %struct.komeda_plane** %8, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 14
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %9, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %20 = call %struct.TYPE_8__* @to_kfb(%struct.drm_framebuffer* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %21, align 8
  store %struct.komeda_format_caps* %22, %struct.komeda_format_caps** %10, align 8
  %23 = load %struct.komeda_plane*, %struct.komeda_plane** %8, align 8
  %24 = getelementptr inbounds %struct.komeda_plane, %struct.komeda_plane* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %27, align 8
  store %struct.komeda_pipeline* %28, %struct.komeda_pipeline** %11, align 8
  %29 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %30 = call i32 @memset(%struct.komeda_data_flow_cfg* %29, i32 0, i32 56)
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %35 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %11, align 8
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_9__* @to_kcrtc(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %41, align 8
  %43 = icmp eq %struct.komeda_pipeline* %36, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %46 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %44, %3
  %53 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %54 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %59 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %58, i32 0, i32 12
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %67 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %65, i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %167

72:                                               ; preds = %52
  %73 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %74 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %77 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 8
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 8
  %82 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %83 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %88 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 4
  %89 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %90 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %93 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %95 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %98 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 4
  %99 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %100 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %103 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 8
  %104 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %105 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 16
  %108 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %109 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %111 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %112, 16
  %114 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %115 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %117 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  %120 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %121 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %123 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 16
  %126 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %127 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %129 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %10, align 8
  %132 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @drm_rotation_simplify(i32 %130, i32 %133)
  %135 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %136 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %138 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %10, align 8
  %141 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @has_bits(i32 %139, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %72
  %146 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %147 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.komeda_format_caps*, %struct.komeda_format_caps** %10, align 8
  %150 = getelementptr inbounds %struct.komeda_format_caps, %struct.komeda_format_caps* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %153 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @komeda_get_format_name(i32 %151, i32 %154)
  %156 = sext i32 %155 to i64
  %157 = call i32 (i8*, i32, i64, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %148, i64 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %167

160:                                              ; preds = %72
  %161 = load %struct.komeda_plane*, %struct.komeda_plane** %8, align 8
  %162 = getelementptr inbounds %struct.komeda_plane, %struct.komeda_plane* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %165 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %166 = call i32 @komeda_complete_data_flow_cfg(%struct.TYPE_10__* %163, %struct.komeda_data_flow_cfg* %164, %struct.drm_framebuffer* %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %160, %145, %57
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.komeda_plane* @to_kplane(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @to_kfb(%struct.drm_framebuffer*) #1

declare dso_local i32 @memset(%struct.komeda_data_flow_cfg*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @to_kcrtc(i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i64, ...) #1

declare dso_local i32 @drm_rotation_simplify(i32, i32) #1

declare dso_local i32 @has_bits(i32, i32) #1

declare dso_local i32 @komeda_get_format_name(i32, i32) #1

declare dso_local i32 @komeda_complete_data_flow_cfg(%struct.TYPE_10__*, %struct.komeda_data_flow_cfg*, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
