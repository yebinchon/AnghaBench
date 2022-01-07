; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_glk_color_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_glk_color_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, i64, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @glk_color_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glk_color_check(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %6 = call i32 @check_luts(%struct.intel_crtc_state* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i1 [ false, %11 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %23
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INTEL_OUTPUT_FORMAT_RGB, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %39, %33, %23
  %51 = phi i1 [ true, %39 ], [ true, %33 ], [ true, %23 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %54 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %56 = call i32 @glk_gamma_mode(%struct.intel_crtc_state* %55)
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %60 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %62 = call i32 @intel_color_add_affected_planes(%struct.intel_crtc_state* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @check_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @glk_gamma_mode(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_add_affected_planes(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
