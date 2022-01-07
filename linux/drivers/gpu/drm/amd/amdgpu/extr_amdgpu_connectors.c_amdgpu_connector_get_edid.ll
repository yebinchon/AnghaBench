; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_connector = type { i8*, %struct.TYPE_6__*, %struct.amdgpu_connector_atom_dig*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i64 }
%struct.TYPE_4__ = type { i64 }

@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @amdgpu_connector_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_connector_get_edid(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_connector*, align 8
  %6 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 1
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
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %28 = call i32 @amdgpu_i2c_router_select_ddc_port(%struct.amdgpu_connector* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %31 = call i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %30)
  %32 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %44 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i8* @drm_get_edid(%struct.drm_connector* %42, i32* %47)
  %49 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %127

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
  br i1 %62, label %63, label %111

63:                                               ; preds = %57, %51
  %64 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %64, i32 0, i32 2
  %66 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %65, align 8
  store %struct.amdgpu_connector_atom_dig* %66, %struct.amdgpu_connector_atom_dig** %6, align 8
  %67 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %6, align 8
  %74 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %72, %63
  %79 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %87 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %88 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i8* @drm_get_edid(%struct.drm_connector* %86, i32* %91)
  %93 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %94 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %110

95:                                               ; preds = %78, %72
  %96 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %97 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %102 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %103 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i8* @drm_get_edid(%struct.drm_connector* %101, i32* %105)
  %107 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %108 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %100, %95
  br label %110

110:                                              ; preds = %109, %85
  br label %126

111:                                              ; preds = %57
  %112 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %113 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = icmp ne %struct.TYPE_6__* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %118 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %119 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i8* @drm_get_edid(%struct.drm_connector* %117, i32* %121)
  %123 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %124 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %116, %111
  br label %126

126:                                              ; preds = %125, %110
  br label %127

127:                                              ; preds = %126, %41
  %128 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %129 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %150, label %132

132:                                              ; preds = %127
  %133 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %134 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %140 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138, %132
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %146 = call i8* @amdgpu_connector_get_hardcoded_edid(%struct.amdgpu_device* %145)
  %147 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %5, align 8
  %148 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %144, %138
  br label %150

150:                                              ; preds = %19, %149, %127
  ret void
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_i2c_router_select_ddc_port(%struct.amdgpu_connector*) #1

declare dso_local i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i8* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i8* @amdgpu_connector_get_hardcoded_edid(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
