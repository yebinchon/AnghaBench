; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_rgb.c_fsl_dcu_attach_panel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_rgb.c_fsl_dcu_attach_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dcu_drm_device = type { i32, i32, %struct.TYPE_2__, %struct.drm_encoder }
%struct.TYPE_2__ = type { %struct.drm_encoder*, %struct.drm_connector }
%struct.drm_connector = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_panel = type { i32 }

@fsl_dcu_drm_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@connector_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to attach panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_dcu_drm_device*, %struct.drm_panel*)* @fsl_dcu_attach_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dcu_attach_panel(%struct.fsl_dcu_drm_device* %0, %struct.drm_panel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_dcu_drm_device*, align 8
  %5 = alloca %struct.drm_panel*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  store %struct.fsl_dcu_drm_device* %0, %struct.fsl_dcu_drm_device** %4, align 8
  store %struct.drm_panel* %1, %struct.drm_panel** %5, align 8
  %9 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %9, i32 0, i32 3
  store %struct.drm_encoder* %10, %struct.drm_encoder** %6, align 8
  %11 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.drm_connector* %13, %struct.drm_connector** %7, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %15 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.drm_encoder* %14, %struct.drm_encoder** %17, align 8
  %18 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %22 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %23 = call i32 @drm_connector_init(i32 %20, %struct.drm_connector* %21, i32* @fsl_dcu_drm_connector_funcs, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %30 = call i32 @drm_connector_helper_add(%struct.drm_connector* %29, i32* @connector_helper_funcs)
  %31 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %32 = call i32 @drm_connector_register(%struct.drm_connector* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %58

36:                                               ; preds = %28
  %37 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %39 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %37, %struct.drm_encoder* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %55

43:                                               ; preds = %36
  %44 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %45 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %46 = call i32 @drm_panel_attach(%struct.drm_panel* %44, %struct.drm_connector* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %62

55:                                               ; preds = %49, %42
  %56 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %57 = call i32 @drm_connector_unregister(%struct.drm_connector* %56)
  br label %58

58:                                               ; preds = %55, %35
  %59 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %60 = call i32 @drm_connector_cleanup(%struct.drm_connector* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %54, %26
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_attach(%struct.drm_panel*, %struct.drm_connector*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
