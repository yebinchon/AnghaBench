; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_create_fake_mst_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_create_fake_mst_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_encoder = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@amdgpu_dm_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPMST = common dso_local global i32 0, align 4
@amdgpu_dm_encoder_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amdgpu_encoder* (%struct.amdgpu_dm_connector*)* @dm_dp_create_fake_mst_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amdgpu_encoder* @dm_dp_create_fake_mst_encoder(%struct.amdgpu_dm_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_encoder*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_encoder*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %3, align 8
  %8 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.amdgpu_encoder* @kzalloc(i32 4, i32 %15)
  store %struct.amdgpu_encoder* %16, %struct.amdgpu_encoder** %6, align 8
  %17 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  %18 = icmp ne %struct.amdgpu_encoder* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.amdgpu_encoder* null, %struct.amdgpu_encoder** %2, align 8
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %21, i32 0, i32 0
  store %struct.drm_encoder* %22, %struct.drm_encoder** %7, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = call i32 @amdgpu_dm_get_encoder_crtc_mask(%struct.amdgpu_device* %23)
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* @DRM_MODE_ENCODER_DPMST, align 4
  %31 = call i32 @drm_encoder_init(%struct.drm_device* %27, %struct.drm_encoder* %29, i32* @amdgpu_dm_encoder_funcs, i32 %30, i32* null)
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %33 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %32, i32* @amdgpu_dm_encoder_helper_funcs)
  %34 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %6, align 8
  store %struct.amdgpu_encoder* %34, %struct.amdgpu_encoder** %2, align 8
  br label %35

35:                                               ; preds = %20, %19
  %36 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %2, align 8
  ret %struct.amdgpu_encoder* %36
}

declare dso_local %struct.amdgpu_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_dm_get_encoder_crtc_mask(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
