; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_dm_connector = type { i32, %struct.edid* }
%struct.edid = type { i32 }
%struct.drm_encoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @amdgpu_dm_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %6)
  store %struct.amdgpu_dm_connector* %7, %struct.amdgpu_dm_connector** %3, align 8
  %8 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %8, i32 0, i32 1
  %10 = load %struct.edid*, %struct.edid** %9, align 8
  store %struct.edid* %10, %struct.edid** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call %struct.drm_encoder* @amdgpu_dm_connector_to_encoder(%struct.drm_connector* %11)
  store %struct.drm_encoder* %12, %struct.drm_encoder** %4, align 8
  %13 = load %struct.edid*, %struct.edid** %5, align 8
  %14 = icmp ne %struct.edid* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.edid*, %struct.edid** %5, align 8
  %17 = call i32 @drm_edid_is_valid(%struct.edid* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = call i32 @drm_add_modes_noedid(%struct.drm_connector* %20, i32 640, i32 480)
  %22 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %26 = load %struct.edid*, %struct.edid** %5, align 8
  %27 = call i32 @amdgpu_dm_connector_ddc_get_modes(%struct.drm_connector* %25, %struct.edid* %26)
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %30 = call i32 @amdgpu_dm_connector_add_common_modes(%struct.drm_encoder* %28, %struct.drm_connector* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %33 = call i32 @amdgpu_dm_fbc_init(%struct.drm_connector* %32)
  %34 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @amdgpu_dm_connector_to_encoder(%struct.drm_connector*) #1

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local i32 @drm_add_modes_noedid(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @amdgpu_dm_connector_ddc_get_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @amdgpu_dm_connector_add_common_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @amdgpu_dm_fbc_init(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
