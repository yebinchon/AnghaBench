; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.of_device_id = type { i32 }

@mxsfb_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mxsfb_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxsfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxsfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @mxsfb_dt_ids, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.of_device_id* @of_match_device(i32 %7, %struct.TYPE_3__* %9)
  store %struct.of_device_id* %10, %struct.of_device_id** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.drm_device* @drm_dev_alloc(i32* @mxsfb_driver, %struct.TYPE_3__* %30)
  store %struct.drm_device* %31, %struct.drm_device** %4, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i64 @IS_ERR(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.drm_device* %36)
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = call i32 @mxsfb_load(%struct.drm_device* %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %56

44:                                               ; preds = %38
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = call i32 @drm_dev_register(%struct.drm_device* %45, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %51, i32 32)
  store i32 0, i32* %2, align 4
  br label %60

53:                                               ; preds = %49
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = call i32 @mxsfb_unload(%struct.drm_device* %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = call i32 @drm_dev_put(%struct.drm_device* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %50, %35, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_3__*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @mxsfb_load(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @mxsfb_unload(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
