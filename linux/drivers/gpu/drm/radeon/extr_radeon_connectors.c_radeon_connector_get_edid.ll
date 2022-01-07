; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i64 }
%struct.radeon_connector = type { i8*, %struct.TYPE_6__*, %struct.drm_connector, %struct.radeon_connector_atom_dig*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i64 }
%struct.TYPE_4__ = type { i64 }

@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@VGA_SWITCHEROO_CAN_SWITCH_DDC = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@RADEON_IS_PX = common dso_local global i32 0, align 4
@radeon_runtime_pm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @radeon_connector_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_connector_get_edid(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %4, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %13)
  store %struct.radeon_connector* %14, %struct.radeon_connector** %5, align 8
  %15 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %202

20:                                               ; preds = %1
  %21 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %28 = call i32 @radeon_router_select_ddc_port(%struct.radeon_connector* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %31 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %30)
  %32 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i8* @drm_get_edid(%struct.drm_connector* %42, i32* %47)
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %157

51:                                               ; preds = %34, %29
  %52 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %57, %51
  %64 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %65 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %64, i32 0, i32 3
  %66 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %65, align 8
  store %struct.radeon_connector_atom_dig* %66, %struct.radeon_connector_atom_dig** %6, align 8
  %67 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72, %63
  %79 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %87 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %86, i32 0, i32 2
  %88 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i8* @drm_get_edid(%struct.drm_connector* %87, i32* %92)
  %94 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %112

96:                                               ; preds = %78, %72
  %97 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %98 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = icmp ne %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %103 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %102, i32 0, i32 2
  %104 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %105 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i8* @drm_get_edid(%struct.drm_connector* %103, i32* %107)
  %109 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %110 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %101, %96
  br label %112

112:                                              ; preds = %111, %85
  br label %156

113:                                              ; preds = %57
  %114 = call i32 (...) @vga_switcheroo_handler_flags()
  %115 = load i32, i32* @VGA_SWITCHEROO_CAN_SWITCH_DDC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %120 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = icmp ne %struct.TYPE_6__* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %131 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %130, i32 0, i32 2
  %132 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %133 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i8* @drm_get_edid_switcheroo(%struct.drm_connector* %131, i32* %135)
  %137 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %138 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %155

139:                                              ; preds = %124, %118, %113
  %140 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %141 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = icmp ne %struct.TYPE_6__* %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %146 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %145, i32 0, i32 2
  %147 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %148 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = call i8* @drm_get_edid(%struct.drm_connector* %146, i32* %150)
  %152 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %153 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %144, %139
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %155, %112
  br label %157

157:                                              ; preds = %156, %41
  %158 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %159 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %202, label %162

162:                                              ; preds = %157
  %163 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @RADEON_IS_PX, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i64, i64* @radeon_runtime_pm, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %202

173:                                              ; preds = %169, %162
  %174 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %173
  %179 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %180 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %186 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %184, %178
  %191 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %192 = call i8* @radeon_bios_get_hardcoded_edid(%struct.radeon_device* %191)
  %193 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %194 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %190, %184
  br label %201

196:                                              ; preds = %173
  %197 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %198 = call i8* @radeon_bios_get_hardcoded_edid(%struct.radeon_device* %197)
  %199 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %200 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %196, %195
  br label %202

202:                                              ; preds = %19, %172, %201, %157
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_router_select_ddc_port(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i8* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @vga_switcheroo_handler_flags(...) #1

declare dso_local i8* @drm_get_edid_switcheroo(%struct.drm_connector*, i32*) #1

declare dso_local i8* @radeon_bios_get_hardcoded_edid(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
