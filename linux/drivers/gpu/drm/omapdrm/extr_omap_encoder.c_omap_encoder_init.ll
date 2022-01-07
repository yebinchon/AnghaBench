; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.omap_encoder = type { %struct.drm_encoder, %struct.omap_dss_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@omap_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@omap_encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @omap_encoder_init(%struct.drm_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.omap_encoder*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.omap_encoder* @kzalloc(i32 16, i32 %8)
  store %struct.omap_encoder* %9, %struct.omap_encoder** %7, align 8
  %10 = load %struct.omap_encoder*, %struct.omap_encoder** %7, align 8
  %11 = icmp ne %struct.omap_encoder* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %15 = load %struct.omap_encoder*, %struct.omap_encoder** %7, align 8
  %16 = getelementptr inbounds %struct.omap_encoder, %struct.omap_encoder* %15, i32 0, i32 1
  store %struct.omap_dss_device* %14, %struct.omap_dss_device** %16, align 8
  %17 = load %struct.omap_encoder*, %struct.omap_encoder** %7, align 8
  %18 = getelementptr inbounds %struct.omap_encoder, %struct.omap_encoder* %17, i32 0, i32 0
  store %struct.drm_encoder* %18, %struct.drm_encoder** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %21 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %22 = call i32 @drm_encoder_init(%struct.drm_device* %19, %struct.drm_encoder* %20, i32* @omap_encoder_funcs, i32 %21, i32* null)
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %24 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %23, i32* @omap_encoder_helper_funcs)
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  store %struct.drm_encoder* %25, %struct.drm_encoder** %3, align 8
  br label %33

26:                                               ; preds = %12
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = icmp ne %struct.drm_encoder* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %31 = call i32 @omap_encoder_destroy(%struct.drm_encoder* %30)
  br label %32

32:                                               ; preds = %29, %26
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %34
}

declare dso_local %struct.omap_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @omap_encoder_destroy(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
