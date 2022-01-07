; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.intel_vgpu*)* }
%struct.intel_vgpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mdev_device = type { i32 }

@intel_vgpu_iommu_notifier = common dso_local global i32 0, align 4
@intel_vgpu_group_notifier = common dso_local global i32 0, align 4
@VFIO_IOMMU_NOTIFY_DMA_UNMAP = common dso_local global i64 0, align 8
@VFIO_IOMMU_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vfio_register_notifier for iommu failed: %d\0A\00", align 1
@VFIO_GROUP_NOTIFY_SET_KVM = common dso_local global i64 0, align 8
@VFIO_GROUP_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"vfio_register_notifier for group failed: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@intel_gvt_ops = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @intel_vgpu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_open(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %8 = call %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device* %7)
  store %struct.intel_vgpu* %8, %struct.intel_vgpu** %4, align 8
  %9 = load i32, i32* @intel_vgpu_iommu_notifier, align 4
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @intel_vgpu_group_notifier, align 4
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load i64, i64* @VFIO_IOMMU_NOTIFY_DMA_UNMAP, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %21 = call i32 @mdev_dev(%struct.mdev_device* %20)
  %22 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @vfio_register_notifier(i32 %21, i32 %22, i64* %5, %struct.TYPE_6__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %84

32:                                               ; preds = %1
  %33 = load i64, i64* @VFIO_GROUP_NOTIFY_SET_KVM, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %35 = call i32 @mdev_dev(%struct.mdev_device* %34)
  %36 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @vfio_register_notifier(i32 %35, i32 %36, i64* %5, %struct.TYPE_6__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %76

46:                                               ; preds = %32
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = call i32 @try_module_get(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %68

51:                                               ; preds = %46
  %52 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %53 = call i32 @kvmgt_guest_init(%struct.mdev_device* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @intel_gvt_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32 (%struct.intel_vgpu*)*, i32 (%struct.intel_vgpu*)** %59, align 8
  %61 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %62 = call i32 %60(%struct.intel_vgpu* %61)
  %63 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %64 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %86

68:                                               ; preds = %56, %50
  %69 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %70 = call i32 @mdev_dev(%struct.mdev_device* %69)
  %71 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %72 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %73 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = call i32 @vfio_unregister_notifier(i32 %70, i32 %71, %struct.TYPE_6__* %74)
  br label %76

76:                                               ; preds = %68, %43
  %77 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %78 = call i32 @mdev_dev(%struct.mdev_device* %77)
  %79 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %80 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %81 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @vfio_unregister_notifier(i32 %78, i32 %79, %struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %76, %29
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %57
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @vfio_register_notifier(i32, i32, i64*, %struct.TYPE_6__*) #1

declare dso_local i32 @mdev_dev(%struct.mdev_device*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kvmgt_guest_init(%struct.mdev_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vfio_unregister_notifier(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
