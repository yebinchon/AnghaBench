; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.nv50_mstc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_dp_mst_topology_mgr }
%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_connector_state = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @nv50_mstc_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_mstc_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.nv50_mstc*, align 8
  %7 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_connector_state*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  %11 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector* %12)
  store %struct.nv50_mstc* %13, %struct.nv50_mstc** %6, align 8
  %14 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %15 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %17, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %18 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %18, %struct.drm_connector* %19)
  store %struct.drm_connector_state* %20, %struct.drm_connector_state** %8, align 8
  %21 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state* %21, %struct.drm_connector* %22)
  store %struct.drm_connector_state* %23, %struct.drm_connector_state** %9, align 8
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %25 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %24, i32 0, i32 0
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %25, align 8
  store %struct.drm_crtc* %26, %struct.drm_crtc** %11, align 8
  %27 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %28 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %27, i32 0, i32 0
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %28, align 8
  %30 = icmp ne %struct.drm_crtc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %34 = icmp ne %struct.drm_crtc* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %38 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %36, %struct.drm_crtc* %37)
  store %struct.drm_crtc_state* %38, %struct.drm_crtc_state** %10, align 8
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %40 = icmp ne %struct.drm_crtc_state* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %43 = call i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %47 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %41, %35
  store i32 0, i32* %3, align 4
  br label %59

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %54 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %55 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %56 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @drm_dp_atomic_release_vcpi_slots(%struct.drm_atomic_state* %53, %struct.drm_dp_mst_topology_mgr* %54, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %50, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_dp_atomic_release_vcpi_slots(%struct.drm_atomic_state*, %struct.drm_dp_mst_topology_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
