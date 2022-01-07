; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_drv.c_vc4_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_drv.c_vc4_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.vc4_dev* }
%struct.vc4_dev = type { i32, i32, %struct.drm_device* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_v3d_dt_match = common dso_local global i32 0, align 4
@DRIVER_RENDER = common dso_local global i32 0, align 4
@vc4_drm_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"vc4drmfb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vc4_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @DMA_BIT_MASK(i32 32)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vc4_dev* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.vc4_dev* %16, %struct.vc4_dev** %6, align 8
  %17 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %18 = icmp ne %struct.vc4_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %108

22:                                               ; preds = %1
  %23 = load i32, i32* @vc4_v3d_dt_match, align 4
  %24 = call %struct.device_node* @of_find_matching_node_and_match(i32* null, i32 %23, i32* null)
  store %struct.device_node* %24, %struct.device_node** %7, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = call i32 @of_device_is_available(%struct.device_node* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @DRIVER_RENDER, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vc4_drm_driver, i32 0, i32 0), align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vc4_drm_driver, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call %struct.drm_device* @drm_dev_alloc(%struct.TYPE_3__* @vc4_drm_driver, %struct.device* %39)
  store %struct.drm_device* %40, %struct.drm_device** %5, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = call i64 @IS_ERR(%struct.drm_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = call i32 @PTR_ERR(%struct.drm_device* %45)
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %36
  %48 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.drm_device* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %53 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %52, i32 0, i32 2
  store %struct.drm_device* %51, %struct.drm_device** %53, align 8
  %54 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  store %struct.vc4_dev* %54, %struct.vc4_dev** %56, align 8
  %57 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %58 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %57, i32 0, i32 1
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %61 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = call i32 @vc4_bo_cache_init(%struct.drm_device* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  br label %104

68:                                               ; preds = %47
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = call i32 @drm_mode_config_init(%struct.drm_device* %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = call i32 @vc4_gem_init(%struct.drm_device* %71)
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = call i32 @component_bind_all(%struct.device* %73, %struct.drm_device* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %99

79:                                               ; preds = %68
  %80 = call i32 @drm_fb_helper_remove_conflicting_framebuffers(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %81 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %82 = call i32 @vc4_kms_load(%struct.drm_device* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %95

86:                                               ; preds = %79
  %87 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %88 = call i32 @drm_dev_register(%struct.drm_device* %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %95

92:                                               ; preds = %86
  %93 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %94 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %93, i32 16)
  store i32 0, i32* %2, align 4
  br label %108

95:                                               ; preds = %91, %85
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %98 = call i32 @component_unbind_all(%struct.device* %96, %struct.drm_device* %97)
  br label %99

99:                                               ; preds = %95, %78
  %100 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %101 = call i32 @vc4_gem_destroy(%struct.drm_device* %100)
  %102 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %103 = call i32 @vc4_bo_cache_destroy(%struct.drm_device* %102)
  br label %104

104:                                              ; preds = %99, %67
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = call i32 @drm_dev_put(%struct.drm_device* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %92, %44, %19
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.vc4_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_find_matching_node_and_match(i32*, i32, i32*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(%struct.TYPE_3__*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vc4_bo_cache_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @vc4_gem_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_framebuffers(i32*, i8*, i32) #1

declare dso_local i32 @vc4_kms_load(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @vc4_gem_destroy(%struct.drm_device*) #1

declare dso_local i32 @vc4_bo_cache_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
