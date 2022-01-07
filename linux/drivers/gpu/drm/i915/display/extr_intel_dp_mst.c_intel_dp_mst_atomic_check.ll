; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { i32, %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.intel_connector = type { i32 }
%struct.drm_crtc_state = type { i64 }
%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_dp_mst_topology_mgr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @intel_dp_mst_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_mst_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.intel_connector*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  %11 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %13, %struct.drm_connector* %14)
  store %struct.drm_connector_state* %15, %struct.drm_connector_state** %6, align 8
  %16 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = call %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state* %16, %struct.drm_connector* %17)
  store %struct.drm_connector_state* %18, %struct.drm_connector_state** %7, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %19)
  store %struct.intel_connector* %20, %struct.intel_connector** %8, align 8
  %21 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %22 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %21, i32 0, i32 1
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  store %struct.drm_crtc* %23, %struct.drm_crtc** %9, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %26 = call i32 @intel_digital_connector_atomic_check(%struct.drm_connector* %24, %struct.drm_atomic_state* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %3, align 4
  br label %73

31:                                               ; preds = %2
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 1
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %33, align 8
  %35 = icmp ne %struct.drm_crtc* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %73

37:                                               ; preds = %31
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %39 = icmp ne %struct.drm_crtc* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %43 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %41, %struct.drm_crtc* %42)
  store %struct.drm_crtc_state* %43, %struct.drm_crtc_state** %10, align 8
  %44 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %45 = icmp ne %struct.drm_crtc_state* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %48 = call i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %52 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %46, %40
  store i32 0, i32* %3, align 4
  br label %73

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %59 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_6__* @enc_to_mst(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %65, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %66 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %67 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %68 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %69 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_dp_atomic_release_vcpi_slots(%struct.drm_atomic_state* %66, %struct.drm_dp_mst_topology_mgr* %67, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %57, %55, %36, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_digital_connector_atomic_check(%struct.drm_connector*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local %struct.TYPE_6__* @enc_to_mst(i32) #1

declare dso_local i32 @drm_dp_atomic_release_vcpi_slots(%struct.drm_atomic_state*, %struct.drm_dp_mst_topology_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
