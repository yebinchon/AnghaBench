; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_bridge = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRTC_MASK = common dso_local global i32 0, align 4
@ltdc_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Bridge encoder:%d created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_bridge*)* @ltdc_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltdc_encoder_init(%struct.drm_device* %0, %struct.drm_bridge* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_bridge*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_bridge* %1, %struct.drm_bridge** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.drm_encoder* @devm_kzalloc(i32 %10, i32 24, i32 %11)
  store %struct.drm_encoder* %12, %struct.drm_encoder** %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %14 = icmp ne %struct.drm_encoder* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load i32, i32* @CRTC_MASK, align 4
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %26 = load i32, i32* @DRM_MODE_ENCODER_DPI, align 4
  %27 = call i32 @drm_encoder_init(%struct.drm_device* %24, %struct.drm_encoder* %25, i32* @ltdc_encoder_funcs, i32 %26, i32* null)
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %29 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  %30 = call i32 @drm_bridge_attach(%struct.drm_encoder* %28, %struct.drm_bridge* %29, i32* null)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %35 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %18
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %40 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %33, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.drm_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
