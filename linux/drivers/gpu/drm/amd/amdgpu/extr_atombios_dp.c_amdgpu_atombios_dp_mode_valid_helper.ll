; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_mode_valid_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_mode_valid_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_connector = type { %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i32 }

@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_dp_mode_valid_helper(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.amdgpu_connector*, align 8
  %7 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %11)
  store %struct.amdgpu_connector* %12, %struct.amdgpu_connector** %6, align 8
  %13 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %14, align 8
  %16 = icmp ne %struct.amdgpu_connector_atom_dig* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %21, align 8
  store %struct.amdgpu_connector_atom_dig* %22, %struct.amdgpu_connector_atom_dig** %7, align 8
  %23 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %24 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @amdgpu_atombios_dp_get_dp_link_config(%struct.drm_connector* %23, i32 %26, i32 %29, i32* %8, i32* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 540000
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %40 = call i32 @amdgpu_connector_is_dp12_capable(%struct.drm_connector* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %38, %35
  %45 = load i32, i32* @MODE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %33, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_dp_get_dp_link_config(%struct.drm_connector*, i32, i32, i32*, i32*) #1

declare dso_local i32 @amdgpu_connector_is_dp12_capable(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
