; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_vga_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_vga_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device*, i32 }
%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.radeon_connector = type { i32, i32, i64, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque

@connector_status_disconnected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: probed a monitor but no|invalid EDID\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_vga_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_vga_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %7, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %20)
  store %struct.radeon_connector* %21, %struct.radeon_connector** %8, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 1
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pm_runtime_get_sync(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %35, i32* %3, align 4
  br label %192

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %39 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %38)
  store %struct.drm_encoder* %39, %struct.drm_encoder** %9, align 8
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %41 = icmp ne %struct.drm_encoder* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %51 = call i32 @radeon_ddc_probe(%struct.radeon_connector* %50, i32 0)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %52
  %56 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %57 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %59 = call i32 @radeon_connector_free_edid(%struct.drm_connector* %58)
  %60 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %61 = call i32 @radeon_connector_get_edid(%struct.drm_connector* %60)
  %62 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %63 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %55
  %67 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @connector_status_connected, align 4
  store i32 %71, i32* %12, align 4
  br label %102

72:                                               ; preds = %55
  %73 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %74 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %73, i32 0, i32 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %85 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %87 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %72
  %91 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %92 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %97 = call i32 @radeon_connector_free_edid(%struct.drm_connector* %96)
  %98 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %98, i32* %12, align 4
  br label %101

99:                                               ; preds = %90, %72
  %100 = load i32, i32* @connector_status_connected, align 4
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %66
  br label %144

103:                                              ; preds = %52
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %103
  %107 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %108 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %113 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %111, %106
  br label %174

116:                                              ; preds = %103
  %117 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %118 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %123 = icmp ne %struct.drm_encoder* %122, null
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %126 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %125, i32 0, i32 0
  %127 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %126, align 8
  store %struct.drm_encoder_helper_funcs* %127, %struct.drm_encoder_helper_funcs** %10, align 8
  %128 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %10, align 8
  %129 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %128, i32 0, i32 0
  %130 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %129, align 8
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %132 = bitcast %struct.drm_encoder* %131 to %struct.drm_encoder.0*
  %133 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %134 = bitcast %struct.drm_connector* %133 to %struct.drm_connector.1*
  %135 = call i32 %130(%struct.drm_encoder.0* %132, %struct.drm_connector.1* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @connector_status_disconnected, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %124
  %140 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %141 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %124
  br label %143

143:                                              ; preds = %142, %121, %116
  br label %144

144:                                              ; preds = %143, %102
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @connector_status_connected, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %150 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector* %149, %struct.drm_encoder* %150, i32 %151, i32 1)
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %148, %144
  %154 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @connector_status_disconnected, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @connector_status_connected, align 4
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %168, %162, %158, %153
  %171 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %115
  %175 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %174
  %178 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %179 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %178, i32 0, i32 1
  %180 = load %struct.drm_device*, %struct.drm_device** %179, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @pm_runtime_mark_last_busy(i32 %182)
  %184 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %185 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %184, i32 0, i32 1
  %186 = load %struct.drm_device*, %struct.drm_device** %185, align 8
  %187 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @pm_runtime_put_autosuspend(i32 %188)
  br label %190

190:                                              ; preds = %177, %174
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %34
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @radeon_ddc_probe(%struct.radeon_connector*, i32) #1

declare dso_local i32 @radeon_connector_free_edid(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector*, %struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
