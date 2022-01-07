; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_drv.c_rcar_du_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_drv.c_rcar_du_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rcar_du_device = type { %struct.drm_device*, %struct.drm_device*, i32*, i32 }
%struct.drm_device = type { i32, %struct.rcar_du_device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rcar_du_driver = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to initialize DRM/KMS (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Device %s probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_du_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_du_device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rcar_du_device* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.rcar_du_device* %11, %struct.rcar_du_device** %4, align 8
  %12 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %13 = icmp eq %struct.rcar_du_device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %21 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %23 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @of_device_get_match_data(i32* %24)
  %26 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %27 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.rcar_du_device* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = call %struct.drm_device* @devm_ioremap_resource(i32* %35, %struct.resource* %36)
  %38 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %39 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %38, i32 0, i32 1
  store %struct.drm_device* %37, %struct.drm_device** %39, align 8
  %40 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %41 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %40, i32 0, i32 1
  %42 = load %struct.drm_device*, %struct.drm_device** %41, align 8
  %43 = call i64 @IS_ERR(%struct.drm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %17
  %46 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %47 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %46, i32 0, i32 1
  %48 = load %struct.drm_device*, %struct.drm_device** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.drm_device* %48)
  store i32 %49, i32* %2, align 4
  br label %101

50:                                               ; preds = %17
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call %struct.drm_device* @drm_dev_alloc(i32* @rcar_du_driver, i32* %52)
  store %struct.drm_device* %53, %struct.drm_device** %5, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = call i64 @IS_ERR(%struct.drm_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %59 = call i32 @PTR_ERR(%struct.drm_device* %58)
  store i32 %59, i32* %2, align 4
  br label %101

60:                                               ; preds = %50
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %63 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %62, i32 0, i32 0
  store %struct.drm_device* %61, %struct.drm_device** %63, align 8
  %64 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %65 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 1
  store %struct.rcar_du_device* %64, %struct.rcar_du_device** %66, align 8
  %67 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %68 = call i32 @rcar_du_modeset_init(%struct.rcar_du_device* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %97

82:                                               ; preds = %60
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = call i32 @drm_dev_register(%struct.drm_device* %85, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %97

90:                                               ; preds = %82
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_name(i32* %92)
  %94 = call i32 @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %96 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %95, i32 32)
  store i32 0, i32* %2, align 4
  br label %101

97:                                               ; preds = %89, %81
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = call i32 @rcar_du_remove(%struct.platform_device* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %90, %57, %45, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.rcar_du_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_du_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.drm_device* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i32 @rcar_du_modeset_init(%struct.rcar_du_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @rcar_du_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
