; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32, %struct.TYPE_3__, %struct.hdlcd_drm_private* }
%struct.TYPE_3__ = type { i32 }
%struct.hdlcd_drm_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hdlcd_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to bind all components\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialise vblank\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hdlcd_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcd_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.hdlcd_drm_private*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hdlcd_drm_private* @devm_kzalloc(%struct.device* %7, i32 8, i32 %8)
  store %struct.hdlcd_drm_private* %9, %struct.hdlcd_drm_private** %5, align 8
  %10 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %11 = icmp ne %struct.hdlcd_drm_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.drm_device* @drm_dev_alloc(i32* @hdlcd_driver, %struct.device* %16)
  store %struct.drm_device* %17, %struct.drm_device** %4, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = call i64 @IS_ERR(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.drm_device* %22)
  store i32 %23, i32* %2, align 4
  br label %122

24:                                               ; preds = %15
  %25 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 2
  store %struct.hdlcd_drm_private* %25, %struct.hdlcd_drm_private** %27, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = call i32 @dev_set_drvdata(%struct.device* %28, %struct.drm_device* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = call i32 @hdlcd_setup_mode_config(%struct.drm_device* %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = call i32 @hdlcd_load(%struct.drm_device* %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %114

38:                                               ; preds = %24
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @of_graph_get_port_by_id(i32 %41, i32 0)
  %43 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %44 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = call i32 @component_bind_all(%struct.device* %46, %struct.drm_device* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %99

53:                                               ; preds = %38
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = call i32 @pm_runtime_set_active(%struct.device* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %93

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @pm_runtime_enable(%struct.device* %60)
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @drm_vblank_init(%struct.drm_device* %62, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %88

72:                                               ; preds = %59
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = call i32 @drm_mode_config_reset(%struct.drm_device* %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = call i32 @drm_dev_register(%struct.drm_device* %77, i32 0)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %85

82:                                               ; preds = %72
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %83, i32 32)
  store i32 0, i32* %2, align 4
  br label %122

85:                                               ; preds = %81
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %86)
  br label %88

88:                                               ; preds = %85, %70
  %89 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pm_runtime_disable(i32 %91)
  br label %93

93:                                               ; preds = %88, %58
  %94 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %95 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %94)
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %98 = call i32 @component_unbind_all(%struct.device* %96, %struct.drm_device* %97)
  br label %99

99:                                               ; preds = %93, %51
  %100 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %101 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @of_node_put(i32* %103)
  %105 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %106 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  %108 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %109 = call i32 @drm_irq_uninstall(%struct.drm_device* %108)
  %110 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %111 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @of_reserved_mem_device_release(i32 %112)
  br label %114

114:                                              ; preds = %99, %37
  %115 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %116 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %115)
  %117 = load %struct.device*, %struct.device** %3, align 8
  %118 = call i32 @dev_set_drvdata(%struct.device* %117, %struct.drm_device* null)
  %119 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %120 = call i32 @drm_dev_put(%struct.drm_device* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %114, %82, %21, %12
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.hdlcd_drm_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @hdlcd_setup_mode_config(%struct.drm_device*) #1

declare dso_local i32 @hdlcd_load(%struct.drm_device*, i32) #1

declare dso_local i32* @of_graph_get_port_by_id(i32, i32) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @of_node_put(i32*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @of_reserved_mem_device_release(i32) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
