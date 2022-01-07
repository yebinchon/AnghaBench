; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_plane_downscale_amount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_plane_downscale_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_plane = type { i64 }

@PLANE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @skl_plane_downscale_amount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_downscale_amount(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %15 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.intel_plane* @to_intel_plane(i32 %18)
  store %struct.intel_plane* %19, %struct.intel_plane** %6, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %22 = call i32 @intel_wm_plane_visible(%struct.intel_crtc_state* %20, %struct.intel_plane_state* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 @u32_to_fixed16(i32 0)
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %2
  %31 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %32 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PLANE_CURSOR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %7, align 4
  %42 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %8, align 4
  %47 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %48 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %52 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  br label %74

55:                                               ; preds = %30
  %56 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %57 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = call i32 @drm_rect_width(i32* %58)
  %60 = ashr i32 %59, 16
  store i32 %60, i32* %7, align 4
  %61 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %62 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = call i32 @drm_rect_height(i32* %63)
  %65 = ashr i32 %64, 16
  store i32 %65, i32* %8, align 4
  %66 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %67 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = call i32 @drm_rect_width(i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %71 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = call i32 @drm_rect_height(i32* %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %55, %36
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @div_fixed16(i32 %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @div_fixed16(i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @u32_to_fixed16(i32 1)
  %83 = call i32 @max_fixed16(i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @u32_to_fixed16(i32 1)
  %86 = call i32 @max_fixed16(i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @mul_fixed16(i32 %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %74, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @u32_to_fixed16(i32) #1

declare dso_local i32 @drm_rect_width(i32*) #1

declare dso_local i32 @drm_rect_height(i32*) #1

declare dso_local i32 @div_fixed16(i32, i32) #1

declare dso_local i32 @max_fixed16(i32, i32) #1

declare dso_local i32 @mul_fixed16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
