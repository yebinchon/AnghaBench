; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev*, %struct.drm_i915_private* }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.intel_device_info = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_private* (%struct.pci_dev*, %struct.pci_device_id*)* @i915_driver_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_private* @i915_driver_create(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_device_info*, align 8
  %7 = alloca %struct.intel_device_info*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.intel_device_info*
  store %struct.intel_device_info* %13, %struct.intel_device_info** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.drm_i915_private* @kzalloc(i32 16, i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %17 = icmp ne %struct.drm_i915_private* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_i915_private* @ERR_PTR(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %3, align 8
  br label %69

22:                                               ; preds = %2
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = call i32 @drm_dev_init(%struct.TYPE_3__* %24, i32* @driver, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %32 = call i32 @kfree(%struct.drm_i915_private* %31)
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.drm_i915_private* @ERR_PTR(i32 %33)
  store %struct.drm_i915_private* %34, %struct.drm_i915_private** %3, align 8
  br label %69

35:                                               ; preds = %22
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store %struct.drm_i915_private* %36, %struct.drm_i915_private** %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.pci_dev* %40, %struct.pci_dev** %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %46 = call i32 @pci_set_drvdata(%struct.pci_dev* %44, %struct.drm_i915_private* %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %48 = call %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private* %47)
  store %struct.intel_device_info* %48, %struct.intel_device_info** %7, align 8
  %49 = load %struct.intel_device_info*, %struct.intel_device_info** %7, align 8
  %50 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %51 = call i32 @memcpy(%struct.intel_device_info* %49, %struct.intel_device_info* %50, i32 16)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %56 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.intel_device_info*, %struct.intel_device_info** %7, align 8
  %59 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.intel_device_info*, %struct.intel_device_info** %7, align 8
  %62 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @BITS_PER_TYPE(i32 %63)
  %65 = icmp sgt i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %68, %struct.drm_i915_private** %3, align 8
  br label %69

69:                                               ; preds = %35, %30, %18
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  ret %struct.drm_i915_private* %70
}

declare dso_local %struct.drm_i915_private* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_i915_private* @ERR_PTR(i32) #1

declare dso_local i32 @drm_dev_init(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.drm_i915_private*) #1

declare dso_local %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local i32 @memcpy(%struct.intel_device_info*, %struct.intel_device_info*, i32) #1

declare dso_local %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @BITS_PER_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
