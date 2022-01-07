; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_compute_gtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_compute_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_12__, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }
%struct.intel_framebuffer = type { %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @intel_plane_compute_gtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_plane_compute_gtt(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.intel_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.intel_framebuffer* @to_intel_framebuffer(i32 %11)
  store %struct.intel_framebuffer* %12, %struct.intel_framebuffer** %4, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %18 = icmp ne %struct.intel_framebuffer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %158

20:                                               ; preds = %1
  %21 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %22 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %28 = call i64 @intel_plane_needs_remap(%struct.intel_plane_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %32 = call i32 @intel_plane_remap_gtt(%struct.intel_plane_state* %31)
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %34 = call i32 @intel_plane_check_stride(%struct.intel_plane_state* %33)
  store i32 %34, i32* %2, align 4
  br label %158

35:                                               ; preds = %20
  %36 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %37 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %36, i32 0, i32 2
  %38 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %39 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @intel_fill_fb_ggtt_view(i32* %37, %struct.TYPE_13__* %39, i32 %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %132, %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %42
  %47 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %48 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @intel_fb_pitch(%struct.TYPE_13__* %48, i32 %49, i32 %50)
  %52 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  store i32 %51, i32* %58, align 8
  %59 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %60 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @drm_rotation_90_or_270(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %46
  %70 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %71 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %79 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %86 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %94 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  br label %131

100:                                              ; preds = %46
  %101 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %102 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %110 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 %108, i32* %115, align 4
  %116 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %117 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %125 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 8
  br label %131

131:                                              ; preds = %100, %69
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %42

135:                                              ; preds = %42
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @drm_rotation_90_or_270(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %141 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %144 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %146, 16
  %148 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %4, align 8
  %149 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 16
  %153 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %154 = call i32 @drm_rect_rotate(i32* %142, i32 %147, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %139, %135
  %156 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %157 = call i32 @intel_plane_check_stride(%struct.intel_plane_state* %156)
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %155, %30, %19
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(i32) #1

declare dso_local i64 @intel_plane_needs_remap(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_remap_gtt(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_plane_check_stride(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_fill_fb_ggtt_view(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @intel_fb_pitch(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @drm_rect_rotate(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
