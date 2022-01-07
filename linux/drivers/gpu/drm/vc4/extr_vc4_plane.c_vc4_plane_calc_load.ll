; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_calc_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_calc_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.vc4_plane_state = type { i64*, i64*, i32, i32, i32*, i32, i32*, i32 }
%struct.drm_crtc_state = type { i32 }

@VC4_SCALING_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane_state*)* @vc4_plane_calc_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_plane_calc_load(%struct.drm_plane_state* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.vc4_plane_state*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %2, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 2
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %14 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %13)
  store %struct.vc4_plane_state* %14, %struct.vc4_plane_state** %7, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %17, i32 %20)
  store %struct.drm_crtc_state* %21, %struct.drm_crtc_state** %8, align 8
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %22, i32 0, i32 0
  %24 = call i32 @drm_mode_vrefresh(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %26 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VC4_SCALING_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %1
  %33 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %34 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VC4_SCALING_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %32
  %41 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %42 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VC4_SCALING_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %50 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VC4_SCALING_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %40, %32, %1
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %48
  store i32 2, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %60 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %62 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %61, i32 0, i32 3
  store i32 0, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %125, %58
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %64, %69
  br i1 %70, label %71, label %128

71:                                               ; preds = %63
  %72 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %73 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %80 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DIV_ROUND_UP(i32 %78, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %84 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %91 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %89, %96
  %98 = load i32, i32* %9, align 4
  %99 = mul i32 %97, %98
  %100 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %101 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %99, %108
  %110 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %111 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %115 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %118 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %116, %119
  %121 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %122 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %71
  %126 = load i32, i32* %5, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %63

128:                                              ; preds = %63
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %131 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = mul i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %136 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %141 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = mul i32 %142, %139
  store i32 %143, i32* %141, align 8
  ret void
}

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i32) #1

declare dso_local i32 @drm_mode_vrefresh(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
