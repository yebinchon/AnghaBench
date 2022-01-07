; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { i32, %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dc_info_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @amdgpu_dm_connector_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_connector_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_info_packet, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %12, %struct.drm_connector* %13)
  store %struct.drm_connector_state* %14, %struct.drm_connector_state** %6, align 8
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %17 = call %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state* %15, %struct.drm_connector* %16)
  store %struct.drm_connector_state* %17, %struct.drm_connector_state** %7, align 8
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %19 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %18, i32 0, i32 1
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  store %struct.drm_crtc* %20, %struct.drm_crtc** %8, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = icmp ne %struct.drm_crtc* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %27 = call i64 @is_hdr_metadata_different(%struct.drm_connector_state* %25, %struct.drm_connector_state* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %31 = call i32 @fill_hdr_info_packet(%struct.drm_connector_state* %30, %struct.dc_info_packet* %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %39 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %37, %struct.drm_crtc* %38)
  store %struct.drm_crtc_state* %39, %struct.drm_crtc_state** %9, align 8
  %40 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %41 = call i64 @IS_ERR(%struct.drm_crtc_state* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %45 = call i32 @PTR_ERR(%struct.drm_crtc_state* %44)
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %36
  %47 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %48 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %53 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %51, %46
  %58 = phi i1 [ true, %46 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %61 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %24
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %43, %34, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_old_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local i64 @is_hdr_metadata_different(%struct.drm_connector_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @fill_hdr_info_packet(%struct.drm_connector_state*, %struct.dc_info_packet*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
