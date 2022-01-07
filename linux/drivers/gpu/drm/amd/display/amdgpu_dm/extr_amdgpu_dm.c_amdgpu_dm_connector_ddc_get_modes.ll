; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_ddc_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_ddc_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }
%struct.amdgpu_dm_connector = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.edid*)* @amdgpu_dm_connector_ddc_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_dm_connector_ddc_get_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.amdgpu_dm_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %6)
  store %struct.amdgpu_dm_connector* %7, %struct.amdgpu_dm_connector** %5, align 8
  %8 = load %struct.edid*, %struct.edid** %4, align 8
  %9 = icmp ne %struct.edid* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = load %struct.edid*, %struct.edid** %4, align 8
  %16 = call i64 @drm_add_edid_modes(%struct.drm_connector* %14, %struct.edid* %15)
  %17 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = call i32 @drm_mode_sort(i32* %20)
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = call i32 @amdgpu_dm_get_native_mode(%struct.drm_connector* %22)
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %10
  ret void
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_mode_sort(i32*) #1

declare dso_local i32 @amdgpu_dm_get_native_mode(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
