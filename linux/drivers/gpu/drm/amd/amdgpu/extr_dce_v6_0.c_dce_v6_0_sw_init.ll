; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@amdgpu_mode_funcs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dce_v6_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v6_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %7, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %19 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 5
  %24 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %18, i32 %19, i32 %21, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %174

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  store i32 8, i32* %5, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %39 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 4
  %43 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %38, i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %174

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %54 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 3
  %57 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %53, i32 %54, i32 42, i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %174

62:                                               ; preds = %52
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 6
  store i32* @amdgpu_mode_funcs, i32** %70, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 16384, i32* %80, align 4
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i32 16384, i32* %85, align 8
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i32 24, i32* %90, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  store i32 %99, i32* %104, align 4
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %106 = call i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %62
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %174

111:                                              ; preds = %62
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 16384, i32* %116, align 4
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32 16384, i32* %121, align 8
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %138, %111
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @dce_v6_0_crtc_init(%struct.amdgpu_device* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %174

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %122

141:                                              ; preds = %122
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %143 = call i32 @amdgpu_atombios_get_connector_info_from_object_table(%struct.amdgpu_device* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = call i32 @amdgpu_display_print_display_setup(%struct.TYPE_9__* %149)
  br label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %174

154:                                              ; preds = %146
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %156 = call i32 @dce_v6_0_afmt_init(%struct.amdgpu_device* %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %174

161:                                              ; preds = %154
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %163 = call i32 @dce_v6_0_audio_init(%struct.amdgpu_device* %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %174

168:                                              ; preds = %161
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = call i32 @drm_kms_helper_poll_init(%struct.TYPE_9__* %171)
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %168, %166, %159, %151, %135, %109, %60, %46, %27
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v6_0_crtc_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_atombios_get_connector_info_from_object_table(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_display_print_display_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @dce_v6_0_afmt_init(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v6_0_audio_init(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
