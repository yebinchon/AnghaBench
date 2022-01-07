; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_atombios_get_connector_object_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_atombios_get_connector_object_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.atom_context* }
%struct.atom_context = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@supported_devices_connector_object_id_convert = common dso_local global i32* null, align 8
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@XTMDS_Info = common dso_local global i32 0, align 4
@ATOM_XTMDS_SUPPORTED_DUALLINK = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @atombios_get_connector_object_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atombios_get_connector_object_id(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_mode_info*, align 8
  %10 = alloca %struct.atom_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %8, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RADEON_IS_IGP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32*, i32** @supported_devices_connector_object_id_convert, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %100

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %40
  %46 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 1
  store %struct.radeon_mode_info* %47, %struct.radeon_mode_info** %9, align 8
  %48 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %9, align 8
  %49 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %48, i32 0, i32 0
  %50 = load %struct.atom_context*, %struct.atom_context** %49, align 8
  store %struct.atom_context* %50, %struct.atom_context** %10, align 8
  %51 = load i32, i32* @DATA, align 4
  %52 = load i32, i32* @XTMDS_Info, align 4
  %53 = call i32 @GetIndexIntoMasterTable(i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.atom_context*, %struct.atom_context** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @atom_parse_data_header(%struct.atom_context* %54, i32 %55, i32* %12, i32* %14, i32* %15, i32* %13)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %45
  %59 = load %struct.atom_context*, %struct.atom_context** %10, align 8
  %60 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %65, %struct.TYPE_2__** %16, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATOM_XTMDS_SUPPORTED_DUALLINK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %58
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 4
  store i32 %77, i32* %4, align 4
  br label %100

78:                                               ; preds = %72
  %79 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D, align 4
  store i32 %79, i32* %4, align 4
  br label %100

80:                                               ; preds = %58
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  store i32 %85, i32* %4, align 4
  br label %100

86:                                               ; preds = %80
  %87 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D, align 4
  store i32 %87, i32* %4, align 4
  br label %100

88:                                               ; preds = %45
  %89 = load i32*, i32** @supported_devices_connector_object_id_convert, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %4, align 4
  br label %100

94:                                               ; preds = %40, %36
  %95 = load i32*, i32** @supported_devices_connector_object_id_convert, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %88, %86, %84, %78, %76, %26
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
