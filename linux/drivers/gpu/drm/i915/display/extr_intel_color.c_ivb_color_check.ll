; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ivb_color_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ivb_color_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @ivb_color_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivb_color_check(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %7 = call i32 @ilk_csc_limited_range(%struct.intel_crtc_state* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = call i32 @check_luts(%struct.intel_crtc_state* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20, %14
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INTEL_OUTPUT_FORMAT_RGB, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %32
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %42, %32
  %52 = phi i1 [ true, %42 ], [ true, %32 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %57 = call i32 @ivb_gamma_mode(%struct.intel_crtc_state* %56)
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %59 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %61 = call i32 @ivb_csc_mode(%struct.intel_crtc_state* %60)
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %65 = call i32 @intel_color_add_affected_planes(%struct.intel_crtc_state* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ilk_csc_limited_range(%struct.intel_crtc_state*) #1

declare dso_local i32 @check_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @ivb_gamma_mode(%struct.intel_crtc_state*) #1

declare dso_local i32 @ivb_csc_mode(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_add_affected_planes(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
