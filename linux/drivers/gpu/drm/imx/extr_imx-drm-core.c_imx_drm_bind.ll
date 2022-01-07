; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-drm-core.c_imx_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-drm-core.c_imx_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@imx_drm_driver = common dso_local global i32 0, align 4
@imx_drm_mode_config_funcs = common dso_local global i32 0, align 4
@imx_drm_mode_config_helpers = common dso_local global i32 0, align 4
@MAX_CRTC = common dso_local global i32 0, align 4
@legacyfb_depth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid legacyfb_depth.  Defaulting to 16bpp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @imx_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.drm_device* @drm_dev_alloc(i32* @imx_drm_driver, %struct.device* %6)
  store %struct.drm_device* %7, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.drm_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.drm_device* %12)
  store i32 %13, i32* %2, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 4096, i32* %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 4096, i32* %28, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  store i32* @imx_drm_mode_config_funcs, i32** %31, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i32* @imx_drm_mode_config_helpers, i32** %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 1, i32* %37, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i32 1, i32* %40, align 4
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = call i32 @drm_mode_config_init(%struct.drm_device* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = load i32, i32* @MAX_CRTC, align 4
  %45 = call i32 @drm_vblank_init(%struct.drm_device* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %14
  br label %90

49:                                               ; preds = %14
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = call i32 @dev_set_drvdata(%struct.device* %50, %struct.drm_device* %51)
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = call i32 @component_bind_all(%struct.device* %53, %struct.drm_device* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %90

59:                                               ; preds = %49
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = call i32 @drm_mode_config_reset(%struct.drm_device* %60)
  %62 = load i32, i32* @legacyfb_depth, align 4
  %63 = icmp ne i32 %62, 16
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @legacyfb_depth, align 4
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @dev_warn(%struct.device* %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 16, i32* @legacyfb_depth, align 4
  br label %70

70:                                               ; preds = %67, %64, %59
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %71)
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = call i32 @drm_dev_register(%struct.drm_device* %73, i32 0)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = load i32, i32* @legacyfb_depth, align 4
  %81 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %79, i32 %80)
  store i32 0, i32* %2, align 4
  br label %96

82:                                               ; preds = %77
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %83)
  %85 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %89 = call i32 @component_unbind_all(i32 %87, %struct.drm_device* %88)
  br label %90

90:                                               ; preds = %82, %58, %48
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %91)
  %93 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %94 = call i32 @drm_dev_put(%struct.drm_device* %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %78, %11
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
