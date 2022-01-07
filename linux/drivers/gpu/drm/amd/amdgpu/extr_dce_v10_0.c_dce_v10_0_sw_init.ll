; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_D1_GRPH_PFLIP = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_HOTPLUG_DETECT_A = common dso_local global i32 0, align 4
@amdgpu_mode_funcs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dce_v10_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_sw_init(i8* %0) #0 {
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
  br label %173

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load i32, i32* @VISLANDS30_IV_SRCID_D1_GRPH_PFLIP, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %49, %32
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %39 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 4
  %43 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %38, i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %173

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %55 = load i32, i32* @VISLANDS30_IV_SRCID_HOTPLUG_DETECT_A, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 3
  %58 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %53, i32 %54, i32 %55, i32* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %173

63:                                               ; preds = %52
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  store i32* @amdgpu_mode_funcs, i32** %68, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 16384, i32* %78, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 16384, i32* %83, align 8
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store i32 24, i32* %88, align 4
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  store i32 1, i32* %93, align 8
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  store i32 %97, i32* %102, align 4
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %104 = call i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %63
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %173

109:                                              ; preds = %63
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 16384, i32* %114, align 4
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i32 16384, i32* %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %136, %109
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %120
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @dce_v10_0_crtc_init(%struct.amdgpu_device* %128, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %173

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %120

139:                                              ; preds = %120
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %141 = call i64 @amdgpu_atombios_get_connector_info_from_object_table(%struct.amdgpu_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = call i32 @amdgpu_display_print_display_setup(%struct.TYPE_9__* %146)
  br label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %173

151:                                              ; preds = %143
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %153 = call i32 @dce_v10_0_afmt_init(%struct.amdgpu_device* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %173

158:                                              ; preds = %151
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %160 = call i32 @dce_v10_0_audio_init(%struct.amdgpu_device* %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %173

165:                                              ; preds = %158
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = call i32 @drm_kms_helper_poll_init(%struct.TYPE_9__* %168)
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %165, %163, %156, %148, %133, %107, %61, %46, %26
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v10_0_crtc_init(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @amdgpu_atombios_get_connector_info_from_object_table(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_display_print_display_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @dce_v10_0_afmt_init(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v10_0_audio_init(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
