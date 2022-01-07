; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_add_common_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_add_common_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_size = type { i32, i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_encoder = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@amdgpu_connector_add_common_modes.common_modes = internal constant [17 x %struct.mode_size] [%struct.mode_size { i32 640, i32 480 }, %struct.mode_size { i32 720, i32 480 }, %struct.mode_size { i32 800, i32 600 }, %struct.mode_size { i32 848, i32 480 }, %struct.mode_size { i32 1024, i32 768 }, %struct.mode_size { i32 1152, i32 768 }, %struct.mode_size { i32 1280, i32 720 }, %struct.mode_size { i32 1280, i32 800 }, %struct.mode_size { i32 1280, i32 854 }, %struct.mode_size { i32 1280, i32 960 }, %struct.mode_size { i32 1280, i32 1024 }, %struct.mode_size { i32 1440, i32 900 }, %struct.mode_size { i32 1400, i32 1050 }, %struct.mode_size { i32 1680, i32 1050 }, %struct.mode_size { i32 1600, i32 1200 }, %struct.mode_size { i32 1920, i32 1080 }, %struct.mode_size { i32 1920, i32 1200 }], align 16
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_connector*)* @amdgpu_connector_add_common_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_connector_add_common_modes(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_encoder*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %13)
  store %struct.amdgpu_encoder* %14, %struct.amdgpu_encoder** %6, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %7, align 8
  %15 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %15, i32 0, i32 1
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %123, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 17
  br i1 %19, label %20, label %126

20:                                               ; preds = %17
  %21 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1024
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 768
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %27
  br label %123

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %90, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80, %60, %50
  br label %123

91:                                               ; preds = %80, %70
  br label %92

92:                                               ; preds = %91, %43
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %97, 320
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 200
  br i1 %105, label %106, label %107

106:                                              ; preds = %99, %92
  br label %123

107:                                              ; preds = %99
  %108 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [17 x %struct.mode_size], [17 x %struct.mode_size]* @amdgpu_connector_add_common_modes.common_modes, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.mode_size, %struct.mode_size* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %108, i32 %113, i32 %118, i32 60, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %119, %struct.drm_display_mode** %7, align 8
  %120 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %122 = call i32 @drm_mode_probed_add(%struct.drm_connector* %120, %struct.drm_display_mode* %121)
  br label %123

123:                                              ; preds = %107, %106, %90, %41
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %17

126:                                              ; preds = %17
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
