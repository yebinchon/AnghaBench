; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_vga_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_vga_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_connector = type { i32, i32, i64, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque

@connector_status_disconnected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: probed a monitor but no|invalid EDID\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @amdgpu_connector_vga_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_vga_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_connector*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %12)
  store %struct.amdgpu_connector* %13, %struct.amdgpu_connector** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %14, i32* %10, align 4
  %15 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %27, i32* %3, align 4
  br label %158

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = call %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector* %30)
  store %struct.drm_encoder* %31, %struct.drm_encoder** %7, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %33 = icmp ne %struct.drm_encoder* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %38 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %43 = call i32 @amdgpu_display_ddc_probe(%struct.amdgpu_connector* %42, i32 0)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %44
  %48 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %51 = call i32 @amdgpu_connector_free_edid(%struct.drm_connector* %50)
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = call i32 @amdgpu_connector_get_edid(%struct.drm_connector* %52)
  %54 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @connector_status_connected, align 4
  store i32 %63, i32* %10, align 4
  br label %94

64:                                               ; preds = %47
  %65 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %77 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %64
  %83 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %89 = call i32 @amdgpu_connector_free_edid(%struct.drm_connector* %88)
  %90 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %90, i32* %10, align 4
  br label %93

91:                                               ; preds = %82, %64
  %92 = load i32, i32* @connector_status_connected, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %58
  br label %136

95:                                               ; preds = %44
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %100 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %105 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %98
  br label %140

108:                                              ; preds = %95
  %109 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %110 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  %114 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %115 = icmp ne %struct.drm_encoder* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %118 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %117, i32 0, i32 0
  %119 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %118, align 8
  store %struct.drm_encoder_helper_funcs* %119, %struct.drm_encoder_helper_funcs** %8, align 8
  %120 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %8, align 8
  %121 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %120, i32 0, i32 0
  %122 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %121, align 8
  %123 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %124 = bitcast %struct.drm_encoder* %123 to %struct.drm_encoder.0*
  %125 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %126 = bitcast %struct.drm_connector* %125 to %struct.drm_connector.1*
  %127 = call i32 %122(%struct.drm_encoder.0* %124, %struct.drm_connector.1* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @connector_status_disconnected, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %133 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %116
  br label %135

135:                                              ; preds = %134, %113, %108
  br label %136

136:                                              ; preds = %135, %94
  %137 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @amdgpu_connector_update_scratch_regs(%struct.drm_connector* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %107
  %141 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %140
  %144 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %145 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @pm_runtime_mark_last_busy(i32 %148)
  %150 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %151 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pm_runtime_put_autosuspend(i32 %154)
  br label %156

156:                                              ; preds = %143, %140
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %26
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_display_ddc_probe(%struct.amdgpu_connector*, i32) #1

declare dso_local i32 @amdgpu_connector_free_edid(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
