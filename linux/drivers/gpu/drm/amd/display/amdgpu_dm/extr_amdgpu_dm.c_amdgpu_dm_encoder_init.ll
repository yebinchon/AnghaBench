; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@amdgpu_dm_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@amdgpu_dm_encoder_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.amdgpu_encoder*, i32)* @amdgpu_dm_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_encoder_init(%struct.drm_device* %0, %struct.amdgpu_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.amdgpu_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.amdgpu_encoder* %1, %struct.amdgpu_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %13, i32 0, i32 1
  %15 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %16 = call i32 @drm_encoder_init(%struct.drm_device* %12, %struct.TYPE_3__* %14, i32* @amdgpu_dm_encoder_funcs, i32 %15, i32* null)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %18 = call i32 @amdgpu_dm_get_encoder_crtc_mask(%struct.amdgpu_device* %17)
  %19 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %32, i32 0, i32 1
  %34 = call i32 @drm_encoder_helper_add(%struct.TYPE_3__* %33, i32* @amdgpu_dm_encoder_helper_funcs)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_3__*, i32*, i32, i32*) #1

declare dso_local i32 @amdgpu_dm_get_encoder_crtc_mask(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
