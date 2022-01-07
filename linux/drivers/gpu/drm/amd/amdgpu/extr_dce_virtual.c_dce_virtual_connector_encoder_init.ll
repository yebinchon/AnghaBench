; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_connector_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_connector_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dce_virtual_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@dce_virtual_encoder_helper_funcs = common dso_local global i32 0, align 4
@dce_virtual_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@dce_virtual_connector_helper_funcs = common dso_local global i32 0, align 4
@SubPixelHorizontalRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @dce_virtual_connector_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_virtual_connector_encoder_init(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 4, i32 %8)
  %10 = bitcast i8* %9 to %struct.drm_encoder*
  store %struct.drm_encoder* %10, %struct.drm_encoder** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %12 = icmp ne %struct.drm_encoder* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %26 = call i32 @drm_encoder_init(i32 %23, %struct.drm_encoder* %24, i32* @dce_virtual_encoder_funcs, i32 %25, i32* null)
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %27, i32* @dce_virtual_encoder_helper_funcs)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 12, i32 %29)
  %31 = bitcast i8* %30 to %struct.drm_connector*
  store %struct.drm_connector* %31, %struct.drm_connector** %7, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %33 = icmp ne %struct.drm_connector* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %16
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %36 = call i32 @kfree(%struct.drm_encoder* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %16
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %44 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %45 = call i32 @drm_connector_init(i32 %42, %struct.drm_connector* %43, i32* @dce_virtual_connector_funcs, i32 %44)
  %46 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %47 = call i32 @drm_connector_helper_add(%struct.drm_connector* %46, i32* @dce_virtual_connector_helper_funcs)
  %48 = load i32, i32* @SubPixelHorizontalRGB, align 4
  %49 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %57 = call i32 @drm_connector_register(%struct.drm_connector* %56)
  %58 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %60 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %58, %struct.drm_encoder* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %39, %34, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(i32, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @kfree(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
