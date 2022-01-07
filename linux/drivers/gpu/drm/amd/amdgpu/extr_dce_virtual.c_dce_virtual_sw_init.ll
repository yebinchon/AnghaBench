; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_SMU_DISP_TIMER2_TRIGGER = common dso_local global i32 0, align 4
@amdgpu_mode_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dce_virtual_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_virtual_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %10 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %11 = load i32, i32* @VISLANDS30_IV_SRCID_SMU_DISP_TIMER2_TRIGGER, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 3
  %14 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %9, i32 %10, i32 %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %110

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  store i32* @amdgpu_mode_funcs, i32** %28, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 16384, i32* %33, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 16384, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 24, i32* %43, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32 %52, i32* %57, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %59 = call i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %19
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %110

64:                                               ; preds = %19
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 16384, i32* %69, align 8
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 16384, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %99, %64
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %75
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dce_virtual_crtc_init(%struct.amdgpu_device* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %110

90:                                               ; preds = %82
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @dce_virtual_connector_encoder_init(%struct.amdgpu_device* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %110

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %75

102:                                              ; preds = %75
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i32 @drm_kms_helper_poll_init(%struct.TYPE_8__* %105)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %102, %96, %88, %62, %17
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_display_modeset_create_props(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_virtual_crtc_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dce_virtual_connector_encoder_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
