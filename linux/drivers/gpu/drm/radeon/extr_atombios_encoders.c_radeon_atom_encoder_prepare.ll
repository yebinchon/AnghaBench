; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64, i32 }
%struct.drm_connector = type { i64 }
%struct.radeon_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@CHIP_R600 = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_atom_encoder_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %3, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %13)
  store %struct.radeon_encoder* %14, %struct.radeon_encoder** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %15)
  store %struct.drm_connector* %16, %struct.drm_connector** %5, align 8
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %21 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %27 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %26)
  %28 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %25, %1
  %31 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %31, i32 0, i32 1
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %32, align 8
  store %struct.radeon_encoder_atom_dig* %33, %struct.radeon_encoder_atom_dig** %6, align 8
  %34 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %35 = icmp ne %struct.radeon_encoder_atom_dig* %34, null
  br i1 %35, label %36, label %87

36:                                               ; preds = %30
  %37 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @radeon_atom_release_dig_encoder(%struct.radeon_device* %42, i64 %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %49 = call i64 @radeon_atom_pick_dig_encoder(%struct.drm_encoder* %48, i32 -1)
  %50 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %47
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CHIP_R600, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %75 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %85

76:                                               ; preds = %58
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %84 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %64
  br label %86

86:                                               ; preds = %85, %47
  br label %87

87:                                               ; preds = %86, %30
  br label %88

88:                                               ; preds = %87, %25
  %89 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %90 = call i32 @radeon_atom_output_lock(%struct.drm_encoder* %89, i32 1)
  %91 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %92 = icmp ne %struct.drm_connector* %91, null
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %95 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %94)
  store %struct.radeon_connector* %95, %struct.radeon_connector** %7, align 8
  %96 = load %struct.radeon_connector*, %struct.radeon_connector** %7, align 8
  %97 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.radeon_connector*, %struct.radeon_connector** %7, align 8
  %103 = call i32 @radeon_router_select_cd_port(%struct.radeon_connector* %102)
  br label %104

104:                                              ; preds = %101, %93
  %105 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %106 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %112 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %113 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %104
  br label %115

115:                                              ; preds = %114, %88
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %117 = call i32 @atombios_set_encoder_crtc_source(%struct.drm_encoder* %116)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %123 = call i32 @dce8_program_fmt(%struct.drm_encoder* %122)
  br label %148

124:                                              ; preds = %115
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %130 = call i32 @dce4_program_fmt(%struct.drm_encoder* %129)
  br label %147

131:                                              ; preds = %124
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %137 = call i32 @dce3_program_fmt(%struct.drm_encoder* %136)
  br label %146

138:                                              ; preds = %131
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %144 = call i32 @avivo_program_fmt(%struct.drm_encoder* %143)
  br label %145

145:                                              ; preds = %142, %138
  br label %146

146:                                              ; preds = %145, %135
  br label %147

147:                                              ; preds = %146, %128
  br label %148

148:                                              ; preds = %147, %121
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_atom_release_dig_encoder(%struct.radeon_device*, i64) #1

declare dso_local i64 @radeon_atom_pick_dig_encoder(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atom_output_lock(%struct.drm_encoder*, i32) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_router_select_cd_port(%struct.radeon_connector*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @atombios_set_encoder_crtc_source(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i32 @dce8_program_fmt(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @dce4_program_fmt(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @dce3_program_fmt(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @avivo_program_fmt(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
