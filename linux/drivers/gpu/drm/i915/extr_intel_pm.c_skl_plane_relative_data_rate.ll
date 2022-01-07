; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_plane_relative_data_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_plane_relative_data_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.drm_framebuffer*, i32, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.intel_plane = type { i64 }

@PLANE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*, i32)* @skl_plane_relative_data_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_relative_data_rate(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %17 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.intel_plane* @to_intel_plane(i32 %19)
  store %struct.intel_plane* %20, %struct.intel_plane** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %22 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

27:                                               ; preds = %3
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %29 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %30, align 8
  store %struct.drm_framebuffer* %31, %struct.drm_framebuffer** %12, align 8
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %33 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %38 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PLANE_CURSOR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %95

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @is_planar_yuv_format(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %95

51:                                               ; preds = %46, %43
  %52 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %53 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @drm_rect_width(i32* %54)
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %10, align 4
  %57 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %58 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @drm_rect_height(i32* %59)
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @is_planar_yuv_format(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %64, %51
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %78 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %79 = call i32 @skl_plane_downscale_amount(%struct.intel_crtc_state* %77, %struct.intel_plane_state* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @mul_round_up_u32_fixed16(i32 %80, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %84 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %73, %50, %42, %26
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i64 @is_planar_yuv_format(i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @drm_rect_height(i32*) #1

declare dso_local i32 @skl_plane_downscale_amount(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @mul_round_up_u32_fixed16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
