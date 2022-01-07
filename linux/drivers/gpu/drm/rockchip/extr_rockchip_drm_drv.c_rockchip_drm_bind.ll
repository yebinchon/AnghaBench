; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32, %struct.rockchip_drm_private*, %struct.TYPE_2__, i32 }
%struct.rockchip_drm_private = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@rockchip_drm_driver = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rockchip_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.rockchip_drm_private*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.drm_device* @drm_dev_alloc(i32* @rockchip_drm_driver, %struct.device* %7)
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call i64 @IS_ERR(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.drm_device* %13)
  store i32 %14, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call i32 @dev_set_drvdata(%struct.device* %16, %struct.drm_device* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.rockchip_drm_private* @devm_kzalloc(i32 %21, i32 8, i32 %22)
  store %struct.rockchip_drm_private* %23, %struct.rockchip_drm_private** %5, align 8
  %24 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %25 = icmp ne %struct.rockchip_drm_private* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %98

29:                                               ; preds = %15
  %30 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 1
  store %struct.rockchip_drm_private* %30, %struct.rockchip_drm_private** %32, align 8
  %33 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %34 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %5, align 8
  %37 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %36, i32 0, i32 0
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = call i32 @rockchip_drm_init_iommu(%struct.drm_device* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %98

44:                                               ; preds = %29
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = call i32 @drm_mode_config_init(%struct.drm_device* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = call i32 @rockchip_drm_mode_config_init(%struct.drm_device* %47)
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = call i32 @component_bind_all(%struct.device* %49, %struct.drm_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %93

55:                                               ; preds = %44
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @drm_vblank_init(%struct.drm_device* %56, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %89

65:                                               ; preds = %55
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = call i32 @drm_mode_config_reset(%struct.drm_device* %66)
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = call i32 @rockchip_drm_fbdev_init(%struct.drm_device* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %89

75:                                               ; preds = %65
  %76 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %77 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %76)
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = call i32 @drm_dev_register(%struct.drm_device* %78, i32 0)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %106

84:                                               ; preds = %82
  %85 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %86 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %85)
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = call i32 @rockchip_drm_fbdev_fini(%struct.drm_device* %87)
  br label %89

89:                                               ; preds = %84, %74, %64
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = call i32 @component_unbind_all(%struct.device* %90, %struct.drm_device* %91)
  br label %93

93:                                               ; preds = %89, %54
  %94 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %95 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %94)
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = call i32 @rockchip_iommu_cleanup(%struct.drm_device* %96)
  br label %98

98:                                               ; preds = %93, %43, %26
  %99 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 1
  store %struct.rockchip_drm_private* null, %struct.rockchip_drm_private** %100, align 8
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = call i32 @dev_set_drvdata(%struct.device* %101, %struct.drm_device* null)
  %103 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %104 = call i32 @drm_dev_put(%struct.drm_device* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %83, %12
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local %struct.rockchip_drm_private* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rockchip_drm_init_iommu(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @rockchip_drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @rockchip_drm_fbdev_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @rockchip_drm_fbdev_fini(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @rockchip_iommu_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
