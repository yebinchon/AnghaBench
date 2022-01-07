; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_plane_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_plane_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_plane_state = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, %struct.drm_plane_state }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"plane : offset_x/y(%d,%d), width/height(%d,%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_plane_state*)* @exynos_plane_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_plane_mode_set(%struct.exynos_drm_plane_state* %0) #0 {
  %2 = alloca %struct.exynos_drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.exynos_drm_plane_state* %0, %struct.exynos_drm_plane_state** %2, align 8
  %17 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %17, i32 0, i32 4
  store %struct.drm_plane_state* %18, %struct.drm_plane_state** %3, align 8
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 9
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  store %struct.drm_crtc* %21, %struct.drm_crtc** %4, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %26 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %24, %struct.drm_crtc* %25)
  store %struct.drm_crtc_state* %26, %struct.drm_crtc_state** %5, align 8
  %27 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %28 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %6, align 8
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 16
  store i32 %44, i32* %11, align 4
  %45 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %46 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  store i32 %48, i32* %12, align 4
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 16
  store i32 %52, i32* %13, align 4
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %9, align 4
  %60 = udiv i32 %58, %59
  %61 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %62 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %10, align 4
  %66 = udiv i32 %64, %65
  %67 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %68 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @exynos_plane_get_size(i32 %69, i32 %70, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @exynos_plane_get_size(i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %1
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %90 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul i32 %88, %91
  %93 = lshr i32 %92, 16
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %86, %83
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %1
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 0, %104
  %106 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %107 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %105, %108
  %110 = lshr i32 %109, 16
  %111 = load i32, i32* %12, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %103, %100
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %97
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %117 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %121 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %125 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul i32 %123, %126
  %128 = lshr i32 %127, 16
  %129 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %130 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %134 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = mul i32 %132, %135
  %137 = lshr i32 %136, 16
  %138 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %139 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %143 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %147 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %151 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %155 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %158 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %163 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %167 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %171 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %2, align 8
  %175 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @DRM_DEV_DEBUG_KMS(i32 %161, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %169, i32 %173, i32 %177)
  ret void
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i32 @exynos_plane_get_size(i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
