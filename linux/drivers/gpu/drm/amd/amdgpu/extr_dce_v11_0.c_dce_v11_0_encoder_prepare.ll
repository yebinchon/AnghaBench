; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_encoder_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_encoder_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.amdgpu_encoder = type { i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i64, i32 }
%struct.drm_connector = type { i64 }
%struct.amdgpu_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dce_v11_0_encoder_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_encoder_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %7 = alloca %struct.amdgpu_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %13)
  store %struct.amdgpu_encoder* %14, %struct.amdgpu_encoder** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %15)
  store %struct.drm_connector* %16, %struct.drm_connector** %5, align 8
  %17 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %21 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %27 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %26)
  %28 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %25, %1
  %31 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %31, i32 0, i32 1
  %33 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %32, align 8
  store %struct.amdgpu_encoder_atom_dig* %33, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %34 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %35 = icmp ne %struct.amdgpu_encoder_atom_dig* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %38 = call i64 @dce_v11_0_pick_dig_encoder(%struct.drm_encoder* %37)
  %39 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %53 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %47, %36
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60, %25
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = call i32 @amdgpu_atombios_scratch_regs_lock(%struct.amdgpu_device* %62, i32 1)
  %64 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %65 = icmp ne %struct.drm_connector* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %68 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %67)
  store %struct.amdgpu_connector* %68, %struct.amdgpu_connector** %7, align 8
  %69 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %7, align 8
  %70 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %7, align 8
  %76 = call i32 @amdgpu_i2c_router_select_cd_port(%struct.amdgpu_connector* %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %79 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %85 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %86 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %77
  br label %88

88:                                               ; preds = %87, %61
  %89 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %90 = call i32 @amdgpu_atombios_encoder_set_crtc_source(%struct.drm_encoder* %89)
  %91 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %92 = call i32 @dce_v11_0_program_fmt(%struct.drm_encoder* %91)
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local i64 @dce_v11_0_pick_dig_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_scratch_regs_lock(%struct.amdgpu_device*, i32) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_i2c_router_select_cd_port(%struct.amdgpu_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_set_crtc_source(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v11_0_program_fmt(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
