; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_set_edp_panel_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_set_edp_panel_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.amdgpu_connector = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.dig_transmitter_control = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_connector*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %union.dig_transmitter_control, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %14)
  store %struct.amdgpu_connector* %15, %struct.amdgpu_connector** %6, align 8
  %16 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %21, align 8
  store %struct.amdgpu_device* %22, %struct.amdgpu_device** %8, align 8
  %23 = load i32, i32* @COMMAND, align 4
  %24 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %25 = call i32 @GetIndexIntoMasterTable(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %85

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %85

41:                                               ; preds = %36, %32
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @amdgpu_atom_parse_cmd_header(i32 %45, i32 %46, i32* %11, i32* %12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %85

50:                                               ; preds = %41
  %51 = call i32 @memset(%union.dig_transmitter_control* %9, i32 0, i32 4)
  %52 = load i32, i32* %5, align 4
  %53 = bitcast %union.dig_transmitter_control* %9 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = bitcast %union.dig_transmitter_control* %9 to i32*
  %61 = call i32 @amdgpu_atom_execute_table(i32 %58, i32 %59, i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 300
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %71 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @amdgpu_display_hpd_sense(%struct.amdgpu_device* %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %86

78:                                               ; preds = %69
  %79 = call i32 @mdelay(i32 1)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %66

83:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %86

84:                                               ; preds = %50
  br label %85

85:                                               ; preds = %84, %49, %40, %31
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %83, %77
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%union.dig_transmitter_control*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

declare dso_local i64 @amdgpu_display_hpd_sense(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
