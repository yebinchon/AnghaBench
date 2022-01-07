; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-tve.c_imx_tve_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-tve.c_imx_tve_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.imx_tve = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TVE_MODE_VGA = common dso_local global i64 0, align 8
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@imx_tve_encoder_helper_funcs = common dso_local global i32 0, align 4
@imx_tve_encoder_funcs = common dso_local global i32 0, align 4
@imx_tve_connector_helper_funcs = common dso_local global i32 0, align 4
@imx_tve_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.imx_tve*)* @imx_tve_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_tve_register(%struct.drm_device* %0, %struct.imx_tve* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.imx_tve*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.imx_tve* %1, %struct.imx_tve** %5, align 8
  %8 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %9 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TVE_MODE_VGA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %21 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %20, i32 0, i32 1
  %22 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %23 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @imx_drm_encoder_parse_of(%struct.drm_device* %19, i32* %21, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %17
  %33 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %34 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %33, i32 0, i32 1
  %35 = call i32 @drm_encoder_helper_add(i32* %34, i32* @imx_tve_encoder_helper_funcs)
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %38 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %37, i32 0, i32 1
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @drm_encoder_init(%struct.drm_device* %36, i32* %38, i32* @imx_tve_encoder_funcs, i32 %39, i32* null)
  %41 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %42 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %41, i32 0, i32 2
  %43 = call i32 @drm_connector_helper_add(i32* %42, i32* @imx_tve_connector_helper_funcs)
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %46 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %45, i32 0, i32 2
  %47 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %48 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %49 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @drm_connector_init_with_ddc(%struct.drm_device* %44, i32* %46, i32* @imx_tve_connector_funcs, i32 %47, i32 %50)
  %52 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %53 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %52, i32 0, i32 2
  %54 = load %struct.imx_tve*, %struct.imx_tve** %5, align 8
  %55 = getelementptr inbounds %struct.imx_tve, %struct.imx_tve* %54, i32 0, i32 1
  %56 = call i32 @drm_connector_attach_encoder(i32* %53, i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %32, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @imx_drm_encoder_parse_of(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init_with_ddc(%struct.drm_device*, i32*, i32*, i32, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
