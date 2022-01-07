; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_ddi_dotclock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_ddi_dotclock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, i32, %struct.TYPE_4__, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @ddi_dotclock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddi_dotclock_get(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %4 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %5 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 7
  %14 = call i32 @intel_dotclock_calculate(i32 %11, i32* %13)
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %17 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 6
  %25 = call i32 @intel_dotclock_calculate(i32 %22, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %15
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 24
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 24
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %31, %26
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %36
  br label %50

50:                                               ; preds = %49, %19
  br label %51

51:                                               ; preds = %50, %8
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %59 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %57, %51
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %66 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %71 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sdiv i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %78 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  ret void
}

declare dso_local i32 @intel_dotclock_calculate(i32, i32*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
