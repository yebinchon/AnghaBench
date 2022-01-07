; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i64, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_connector = type { %struct.TYPE_2__, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_connector_atom_dig = type { i64 }

@AMDGPU_HPD_NONE = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_ON = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_connector_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_connector*, align 8
  %6 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %13)
  store %struct.amdgpu_connector* %14, %struct.amdgpu_connector** %5, align 8
  %15 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AMDGPU_HPD_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @amdgpu_display_hpd_set_polarity(%struct.amdgpu_device* %23, i64 %27)
  %29 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %86

35:                                               ; preds = %22
  %36 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %86

41:                                               ; preds = %35
  %42 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %42, i32 0, i32 1
  %44 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %43, align 8
  store %struct.amdgpu_connector_atom_dig* %44, %struct.amdgpu_connector_atom_dig** %6, align 8
  %45 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %86

51:                                               ; preds = %41
  %52 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %53 = call i64 @amdgpu_atombios_dp_get_sinktype(%struct.amdgpu_connector* %52)
  %54 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @amdgpu_display_hpd_sense(%struct.amdgpu_device* %62, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %71 = call i64 @amdgpu_atombios_dp_needs_link_train(%struct.amdgpu_connector* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %75 = call i64 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %86

78:                                               ; preds = %73
  %79 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %80 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %81 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %79, i64 %80)
  %82 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %83 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %84 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %69, %61, %51
  br label %86

86:                                               ; preds = %21, %34, %50, %77, %85, %35
  ret void
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_display_hpd_set_polarity(%struct.amdgpu_device*, i64) #1

declare dso_local i64 @amdgpu_atombios_dp_get_sinktype(%struct.amdgpu_connector*) #1

declare dso_local i64 @amdgpu_display_hpd_sense(%struct.amdgpu_device*, i64) #1

declare dso_local i64 @amdgpu_atombios_dp_needs_link_train(%struct.amdgpu_connector*) #1

declare dso_local i64 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector*) #1

declare dso_local i32 @drm_helper_connector_dpms(%struct.drm_connector*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
