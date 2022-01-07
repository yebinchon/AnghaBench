; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_encoder_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.tfp410_module = type { i32 }
%struct.tfp410_encoder = type { %struct.drm_encoder, %struct.tfp410_module*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@tfp410_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@tfp410_encoder_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_device*, %struct.tfp410_module*)* @tfp410_encoder_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @tfp410_encoder_create(%struct.drm_device* %0, %struct.tfp410_module* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tfp410_module*, align 8
  %6 = alloca %struct.tfp410_encoder*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tfp410_module* %1, %struct.tfp410_module** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tfp410_encoder* @devm_kzalloc(i32 %11, i32 24, i32 %12)
  store %struct.tfp410_encoder* %13, %struct.tfp410_encoder** %6, align 8
  %14 = load %struct.tfp410_encoder*, %struct.tfp410_encoder** %6, align 8
  %15 = icmp ne %struct.tfp410_encoder* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %19 = load %struct.tfp410_encoder*, %struct.tfp410_encoder** %6, align 8
  %20 = getelementptr inbounds %struct.tfp410_encoder, %struct.tfp410_encoder* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.tfp410_module*, %struct.tfp410_module** %5, align 8
  %22 = load %struct.tfp410_encoder*, %struct.tfp410_encoder** %6, align 8
  %23 = getelementptr inbounds %struct.tfp410_encoder, %struct.tfp410_encoder* %22, i32 0, i32 1
  store %struct.tfp410_module* %21, %struct.tfp410_module** %23, align 8
  %24 = load %struct.tfp410_encoder*, %struct.tfp410_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.tfp410_encoder, %struct.tfp410_encoder* %24, i32 0, i32 0
  store %struct.drm_encoder* %25, %struct.drm_encoder** %7, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %27 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %30 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %31 = call i32 @drm_encoder_init(%struct.drm_device* %28, %struct.drm_encoder* %29, i32* @tfp410_encoder_funcs, i32 %30, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  br label %39

35:                                               ; preds = %17
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %37 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %36, i32* @tfp410_encoder_helper_funcs)
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %38, %struct.drm_encoder** %3, align 8
  br label %42

39:                                               ; preds = %34
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %41 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %40)
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %42

42:                                               ; preds = %39, %35, %16
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %43
}

declare dso_local %struct.tfp410_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
