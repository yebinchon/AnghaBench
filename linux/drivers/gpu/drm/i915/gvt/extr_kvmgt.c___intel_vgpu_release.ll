; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c___intel_vgpu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c___intel_vgpu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.intel_vgpu*)* }
%struct.intel_vgpu = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32 }
%struct.kvmgt_guest_info = type { i32 }

@intel_gvt_ops = common dso_local global %struct.TYPE_4__* null, align 8
@VFIO_IOMMU_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"vfio_unregister_notifier for iommu failed: %d\0A\00", align 1
@VFIO_GROUP_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"vfio_unregister_notifier for group failed: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*)* @__intel_vgpu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_vgpu_release(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca %struct.kvmgt_guest_info*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %5 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %6 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @handle_valid(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = call i64 @atomic_cmpxchg(i32* %14, i32 0, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %65

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intel_gvt_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.intel_vgpu*)*, i32 (%struct.intel_vgpu*)** %20, align 8
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %23 = call i32 %21(%struct.intel_vgpu* %22)
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mdev_dev(i32 %27)
  %29 = load i32, i32* @VFIO_IOMMU_NOTIFY, align 4
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = call i32 @vfio_unregister_notifier(i32 %28, i32 %29, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @WARN(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mdev_dev(i32 %40)
  %42 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %43 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %44 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @vfio_unregister_notifier(i32 %41, i32 %42, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @WARN(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = call i32 @module_put(i32 %50)
  %52 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %53 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %55, %struct.kvmgt_guest_info** %3, align 8
  %56 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %3, align 8
  %57 = call i32 @kvmgt_guest_exit(%struct.kvmgt_guest_info* %56)
  %58 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %59 = call i32 @intel_vgpu_release_msi_eventfd_ctx(%struct.intel_vgpu* %58)
  %60 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %61 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %64 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %18, %17, %10
  ret void
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @vfio_unregister_notifier(i32, i32, i32*) #1

declare dso_local i32 @mdev_dev(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kvmgt_guest_exit(%struct.kvmgt_guest_info*) #1

declare dso_local i32 @intel_vgpu_release_msi_eventfd_ctx(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
