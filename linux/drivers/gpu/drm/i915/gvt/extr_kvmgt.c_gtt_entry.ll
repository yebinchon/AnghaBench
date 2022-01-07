; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_gtt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_gtt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.intel_vgpu = type { %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@VFIO_PCI_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, i32*)* @gtt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtt_entry(%struct.mdev_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_gvt*, align 8
  %9 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %11 = call %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device* %10)
  store %struct.intel_vgpu* %11, %struct.intel_vgpu** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @VFIO_PCI_OFFSET_TO_INDEX(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %15, i32 0, i32 0
  %17 = load %struct.intel_gvt*, %struct.intel_gvt** %16, align 8
  store %struct.intel_gvt* %17, %struct.intel_gvt** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VFIO_PCI_OFFSET_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %28 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %29 = call i32 @intel_vgpu_get_bar_gpa(%struct.intel_vgpu* %27, i32 %28)
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %33 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %40 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %44 = call i32 @gvt_ggtt_sz(%struct.intel_gvt* %43)
  %45 = add nsw i32 %42, %44
  %46 = icmp slt i32 %38, %45
  br label %47

47:                                               ; preds = %37, %22
  %48 = phi i1 [ false, %22 ], [ %46, %37 ]
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @VFIO_PCI_OFFSET_TO_INDEX(i32) #1

declare dso_local i32 @intel_vgpu_get_bar_gpa(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_ggtt_sz(%struct.intel_gvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
