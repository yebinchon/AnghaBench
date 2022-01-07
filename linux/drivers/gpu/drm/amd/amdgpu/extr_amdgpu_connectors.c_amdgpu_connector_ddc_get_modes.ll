; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_ddc_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_ddc_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @amdgpu_connector_ddc_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.amdgpu_connector*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %6)
  store %struct.amdgpu_connector* %7, %struct.amdgpu_connector** %4, align 8
  %8 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %13, i32* %16)
  %18 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %19 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @drm_add_edid_modes(%struct.drm_connector* %18, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %25, i32* null)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
