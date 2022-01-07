; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_digital_connector_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_digital_connector_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_digital_connector_state = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }
%struct.drm_crtc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_digital_connector_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_digital_connector_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.intel_digital_connector_state*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %11, %struct.drm_connector* %12)
  store %struct.drm_connector_state* %13, %struct.drm_connector_state** %6, align 8
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %15 = call %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state* %14)
  store %struct.intel_digital_connector_state* %15, %struct.intel_digital_connector_state** %7, align 8
  %16 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = call %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state* %16, %struct.drm_connector* %17)
  store %struct.drm_connector_state* %18, %struct.drm_connector_state** %8, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %20 = call %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state* %19)
  store %struct.intel_digital_connector_state* %20, %struct.intel_digital_connector_state** %9, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %24 = call i32 @intel_hdcp_atomic_check(%struct.drm_connector* %21, %struct.drm_connector_state* %22, %struct.drm_connector_state* %23)
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %26 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

30:                                               ; preds = %2
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %31, i32 %34)
  store %struct.drm_crtc_state* %35, %struct.drm_crtc_state** %10, align 8
  %36 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %37 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %40 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %102, label %43

43:                                               ; preds = %30
  %44 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %45 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %48 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %102, label %51

51:                                               ; preds = %43
  %52 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %53 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %57 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %102, label %61

61:                                               ; preds = %51
  %62 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %63 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %67 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %102, label %71

71:                                               ; preds = %61
  %72 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %73 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %77 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %75, %79
  br i1 %80, label %102, label %81

81:                                               ; preds = %71
  %82 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %83 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %87 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %102, label %91

91:                                               ; preds = %81
  %92 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %7, align 8
  %93 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %9, align 8
  %97 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @blob_equal(i32 %95, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %91, %81, %71, %61, %51, %43, %30
  %103 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %104 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %91
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %29
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local i32 @intel_hdcp_atomic_check(%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_connector_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @blob_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
