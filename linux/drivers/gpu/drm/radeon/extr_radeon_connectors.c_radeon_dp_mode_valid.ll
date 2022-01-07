; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i64, %struct.drm_display_mode }

@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@MODE_PANEL = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @radeon_dp_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.radeon_connector_atom_dig*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %7, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %19)
  store %struct.radeon_connector* %20, %struct.radeon_connector** %8, align 8
  %21 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %22 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %21, i32 0, i32 0
  %23 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %22, align 8
  store %struct.radeon_connector_atom_dig* %23, %struct.radeon_connector_atom_dig** %9, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %29, %2
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %36)
  store %struct.drm_encoder* %37, %struct.drm_encoder** %10, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 320
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 240
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %35
  %48 = load i32, i32* @MODE_PANEL, align 4
  store i32 %48, i32* %3, align 4
  br label %146

49:                                               ; preds = %42
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %51 = icmp ne %struct.drm_encoder* %50, null
  br i1 %51, label %52, label %100

52:                                               ; preds = %49
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %54 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %53)
  store %struct.radeon_encoder* %54, %struct.radeon_encoder** %11, align 8
  %55 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %56 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %55, i32 0, i32 1
  store %struct.drm_display_mode* %56, %struct.drm_display_mode** %12, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %52
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64, %52
  %73 = load i32, i32* @MODE_PANEL, align 4
  store i32 %73, i32* %3, align 4
  br label %146

74:                                               ; preds = %64
  %75 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %76 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RMX_OFF, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88, %80
  %97 = load i32, i32* @MODE_PANEL, align 4
  store i32 %97, i32* %3, align 4
  br label %146

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %49
  br label %144

101:                                              ; preds = %29
  %102 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %103 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %109 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107, %101
  %114 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %116 = call i32 @radeon_dp_mode_valid_helper(%struct.drm_connector* %114, %struct.drm_display_mode* %115)
  store i32 %116, i32* %3, align 4
  br label %146

117:                                              ; preds = %107
  %118 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %119 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %123 = call i32 @radeon_connector_edid(%struct.drm_connector* %122)
  %124 = call i64 @drm_detect_hdmi_monitor(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 340000
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %132, i32* %3, align 4
  br label %146

133:                                              ; preds = %126
  br label %142

134:                                              ; preds = %121, %117
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 165000
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %140, i32* %3, align 4
  br label %146

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %133
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %100
  %145 = load i32, i32* @MODE_OK, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %139, %131, %113, %96, %72, %47
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_dp_mode_valid_helper(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
