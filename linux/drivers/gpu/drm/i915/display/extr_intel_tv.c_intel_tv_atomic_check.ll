; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.drm_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @intel_tv_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %9 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %9, %struct.drm_connector* %10)
  store %struct.drm_connector_state* %11, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %13 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state* %18, %struct.drm_connector* %19)
  store %struct.drm_connector_state* %20, %struct.drm_connector_state** %8, align 8
  %21 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %23 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %21, i32 %24)
  store %struct.drm_crtc_state* %25, %struct.drm_crtc_state** %7, align 8
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %27 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %83, label %35

35:                                               ; preds = %17
  %36 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %37 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %42 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %83, label %47

47:                                               ; preds = %35
  %48 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %49 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %54 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %83, label %59

59:                                               ; preds = %47
  %60 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %61 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %66 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %73 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %78 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %71, %59, %47, %35, %17
  %84 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %85 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %71
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
