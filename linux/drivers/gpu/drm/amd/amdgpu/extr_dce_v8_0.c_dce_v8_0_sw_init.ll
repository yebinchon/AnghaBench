; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@amdgpu_mode_funcs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dce_v8_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 5
  %23 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %17, i32 %18, i32 %20, i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %171

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %9

32:                                               ; preds = %9
  store i32 8, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %38 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 4
  %42 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %37, i32 %38, i32 %39, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %171

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %53 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 3
  %56 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %52, i32 %53, i32 42, i32* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %171

61:                                               ; preds = %51
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  store i32* @amdgpu_mode_funcs, i32** %66, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 16384, i32* %76, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i32 16384, i32* %81, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i32 24, i32* %86, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store i32 1, i32* %91, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 5
  store i32 %95, i32* %100, align 4
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %102 = call i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %61
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %171

107:                                              ; preds = %61
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i32 16384, i32* %112, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i32 16384, i32* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %134, %107
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @dce_v8_0_crtc_init(%struct.amdgpu_device* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %171

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %118

137:                                              ; preds = %118
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %139 = call i64 @amdgpu_atombios_get_connector_info_from_object_table(%struct.amdgpu_device* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = call i32 @amdgpu_display_print_display_setup(%struct.TYPE_9__* %144)
  br label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %171

149:                                              ; preds = %141
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %151 = call i32 @dce_v8_0_afmt_init(%struct.amdgpu_device* %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %171

156:                                              ; preds = %149
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %158 = call i32 @dce_v8_0_audio_init(%struct.amdgpu_device* %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %171

163:                                              ; preds = %156
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = call i32 @drm_kms_helper_poll_init(%struct.TYPE_9__* %166)
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %163, %161, %154, %146, %131, %105, %59, %45, %26
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v8_0_crtc_init(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @amdgpu_atombios_get_connector_info_from_object_table(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_display_print_display_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @dce_v8_0_afmt_init(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v8_0_audio_init(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
