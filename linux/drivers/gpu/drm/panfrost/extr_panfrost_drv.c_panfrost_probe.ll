; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.panfrost_device = type { i32*, i32, i32, %struct.drm_device*, %struct.platform_device* }
%struct.drm_device = type { %struct.panfrost_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@panfrost_drm_driver = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fatal error during GPU init\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Fatal error during devfreq init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panfrost_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.panfrost_device* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.panfrost_device* %10, %struct.panfrost_device** %4, align 8
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %12 = icmp ne %struct.panfrost_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %121

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %19 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %18, i32 0, i32 4
  store %struct.platform_device* %17, %struct.platform_device** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %23 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.panfrost_device* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.drm_device* @drm_dev_alloc(i32* @panfrost_drm_driver, i32* %28)
  store %struct.drm_device* %29, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = call i64 @IS_ERR(%struct.drm_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = call i32 @PTR_ERR(%struct.drm_device* %34)
  store i32 %35, i32* %2, align 4
  br label %121

36:                                               ; preds = %16
  %37 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  store %struct.panfrost_device* %37, %struct.panfrost_device** %39, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %41 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %42 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %41, i32 0, i32 3
  store %struct.drm_device* %40, %struct.drm_device** %42, align 8
  %43 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %44 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %43, i32 0, i32 2
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %47 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %46, i32 0, i32 1
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %50 = call i32 @panfrost_device_init(%struct.panfrost_device* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53
  br label %117

63:                                               ; preds = %36
  %64 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %65 = call i32 @panfrost_devfreq_init(%struct.panfrost_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %68
  br label %114

78:                                               ; preds = %63
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %80 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @pm_runtime_set_active(i32* %81)
  %83 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %84 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @pm_runtime_mark_last_busy(i32* %85)
  %87 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %88 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @pm_runtime_enable(i32* %89)
  %91 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %92 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @pm_runtime_set_autosuspend_delay(i32* %93, i32 50)
  %95 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %96 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @pm_runtime_use_autosuspend(i32* %97)
  %99 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %100 = call i32 @drm_dev_register(%struct.drm_device* %99, i32 0)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %78
  br label %107

104:                                              ; preds = %78
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = call i32 @panfrost_gem_shrinker_init(%struct.drm_device* %105)
  store i32 0, i32* %2, align 4
  br label %121

107:                                              ; preds = %103
  %108 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %109 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @pm_runtime_disable(i32* %110)
  %112 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %113 = call i32 @panfrost_devfreq_fini(%struct.panfrost_device* %112)
  br label %114

114:                                              ; preds = %107, %77
  %115 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %116 = call i32 @panfrost_device_fini(%struct.panfrost_device* %115)
  br label %117

117:                                              ; preds = %114, %62
  %118 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %119 = call i32 @drm_dev_put(%struct.drm_device* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %104, %33, %13
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.panfrost_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panfrost_device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @panfrost_device_init(%struct.panfrost_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @panfrost_devfreq_init(%struct.panfrost_device*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @panfrost_gem_shrinker_init(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @panfrost_devfreq_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_device_fini(%struct.panfrost_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
