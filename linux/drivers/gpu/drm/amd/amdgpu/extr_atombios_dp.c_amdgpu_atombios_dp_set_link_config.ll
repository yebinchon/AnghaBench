; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_set_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_set_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_connector = type { %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i64, i64, i64, i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_dp_set_link_config(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.amdgpu_connector*, align 8
  %6 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %8)
  store %struct.amdgpu_connector* %9, %struct.amdgpu_connector** %5, align 8
  %10 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %11, align 8
  %13 = icmp ne %struct.amdgpu_connector_atom_dig* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %17, align 8
  store %struct.amdgpu_connector_atom_dig* %18, %struct.amdgpu_connector_atom_dig** %6, align 8
  %19 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24, %15
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %39 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %38, i32 0, i32 1
  %40 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %41 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %40, i32 0, i32 2
  %42 = call i32 @amdgpu_atombios_dp_get_dp_link_config(%struct.drm_connector* %31, i32 %34, i32 %37, i64* %39, i64* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %47 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %30
  br label %51

51:                                               ; preds = %14, %50, %24
  ret void
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_dp_get_dp_link_config(%struct.drm_connector*, i32, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
