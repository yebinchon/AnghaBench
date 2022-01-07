; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_get_panel_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_get_panel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i64 }
%struct.amdgpu_connector = type { %struct.TYPE_2__*, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i32 }

@DP_PANEL_MODE_EXTERNAL_DP_MODE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DP_EDP_CONFIGURATION_CAP = common dso_local global i32 0, align 4
@DP_PANEL_MODE_INTERNAL_DP2_MODE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NUTMEG = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_TRAVIS = common dso_local global i64 0, align 8
@DP_PANEL_MODE_INTERNAL_DP1_MODE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_dp_get_panel_mode(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.amdgpu_connector*, align 8
  %7 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %12 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %11)
  store %struct.amdgpu_connector* %12, %struct.amdgpu_connector** %6, align 8
  %13 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = call i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %16, i32 0, i32 1
  %18 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %17, align 8
  %19 = icmp ne %struct.amdgpu_connector_atom_dig* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %23, i32 0, i32 1
  %25 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %24, align 8
  store %struct.amdgpu_connector_atom_dig* %25, %struct.amdgpu_connector_atom_dig** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %22
  %30 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @DP_EDP_CONFIGURATION_CAP, align 4
  %35 = call i32 @drm_dp_dpcd_readb(i32* %33, i32 %34, i32* %10)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 4
  store i32 %42, i32* %8, align 4
  br label %56

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ENCODER_OBJECT_ID_NUTMEG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @ENCODER_OBJECT_ID_TRAVIS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP1_MODE, align 4
  store i32 %52, i32* %8, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %29
  br label %81

58:                                               ; preds = %22
  %59 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* @DP_EDP_CONFIGURATION_CAP, align 4
  %70 = call i32 @drm_dp_dpcd_readb(i32* %68, i32 %69, i32* %10)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
