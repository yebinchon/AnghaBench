; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_pdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_pdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lima_device = type { i32, %struct.drm_device*, i32*, %struct.platform_device* }
%struct.drm_device = type { %struct.lima_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lima_drm_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lima_pdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pdev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call i32 (...) @lima_sched_slab_init()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.lima_device* @devm_kzalloc(i32* %14, i32 32, i32 %15)
  store %struct.lima_device* %16, %struct.lima_device** %4, align 8
  %17 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %18 = icmp ne %struct.lima_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %73

22:                                               ; preds = %12
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %25 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %24, i32 0, i32 3
  store %struct.platform_device* %23, %struct.platform_device** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %29 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i64 @of_device_get_match_data(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %35 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.lima_device* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call %struct.drm_device* @drm_dev_alloc(i32* @lima_drm_driver, i32* %40)
  store %struct.drm_device* %41, %struct.drm_device** %5, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = call i64 @IS_ERR(%struct.drm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.drm_device* %46)
  store i32 %47, i32* %2, align 4
  br label %76

48:                                               ; preds = %22
  %49 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  store %struct.lima_device* %49, %struct.lima_device** %51, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %54 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %53, i32 0, i32 1
  store %struct.drm_device* %52, %struct.drm_device** %54, align 8
  %55 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %56 = call i32 @lima_device_init(%struct.lima_device* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %70

60:                                               ; preds = %48
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = call i32 @drm_dev_register(%struct.drm_device* %61, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %76

67:                                               ; preds = %65
  %68 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %69 = call i32 @lima_device_fini(%struct.lima_device* %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = call i32 @drm_dev_put(%struct.drm_device* %71)
  br label %73

73:                                               ; preds = %70, %19
  %74 = call i32 (...) @lima_sched_slab_fini()
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %66, %45, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @lima_sched_slab_init(...) #1

declare dso_local %struct.lima_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lima_device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @lima_device_init(%struct.lima_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @lima_device_fini(%struct.lima_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @lima_sched_slab_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
