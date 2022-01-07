; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xenbus_device_id = type { i32 }
%struct.xen_drm_front_info = type { i32, i32, %struct.xenbus_device* }

@.str = private unnamed_addr constant [30 x i8] c"Cannot setup DMA mask, ret %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XenbusStateInitialising = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xen_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_drv_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca %struct.xen_drm_front_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = call i32 @DMA_BIT_MASK(i32 64)
  %13 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %22 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.xen_drm_front_info* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  store %struct.xen_drm_front_info* %24, %struct.xen_drm_front_info** %6, align 8
  %25 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %26 = icmp ne %struct.xen_drm_front_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %20
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %32 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %33 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %32, i32 0, i32 2
  store %struct.xenbus_device* %31, %struct.xenbus_device** %33, align 8
  %34 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %38 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %37, i32 0, i32 0
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %40, i32 0, i32 0
  %42 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %43 = call i32 @dev_set_drvdata(%struct.device* %41, %struct.xen_drm_front_info* %42)
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %45 = load i32, i32* @XenbusStateInitialising, align 4
  %46 = call i32 @xenbus_switch_state(%struct.xenbus_device* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %27, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.xen_drm_front_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.xen_drm_front_info*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
