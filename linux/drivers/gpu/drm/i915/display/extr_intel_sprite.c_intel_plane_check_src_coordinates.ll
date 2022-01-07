; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_plane_check_src_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_plane_check_src_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.drm_rect, %struct.drm_framebuffer* }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"src x/w (%u, %u) must be a multiple of %u for %sYUV planes\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rotated \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"src y/h (%u, %u) must be a multiple of %u for %sYUV planes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_plane_check_src_coordinates(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_rect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  store %struct.drm_framebuffer* %16, %struct.drm_framebuffer** %4, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.drm_rect* %19, %struct.drm_rect** %5, align 8
  %20 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %21 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @drm_rotation_90_or_270(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %26 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %6, align 4
  %29 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %30 = call i32 @drm_rect_width(%struct.drm_rect* %29)
  %31 = ashr i32 %30, 16
  store i32 %31, i32* %8, align 4
  %32 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %33 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %7, align 4
  %36 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %37 = call i32 @drm_rect_height(%struct.drm_rect* %36)
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %42 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = shl i32 %45, 16
  %47 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %48 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 16
  %51 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %52 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = shl i32 %55, 16
  %57 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %58 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

66:                                               ; preds = %1
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %71 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %76 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %92

80:                                               ; preds = %66
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %82 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %87 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @max(i32 %85, i32 %90)
  store i32 %91, i32* %11, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %80, %69
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %10, align 4
  %95 = srem i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = srem i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %110 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i8* %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %135

113:                                              ; preds = %97
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = srem i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = srem i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %131 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %123, %102, %65
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
