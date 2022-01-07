; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_init_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_init_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.TYPE_4__*, %struct.intel_gvt_device_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.intel_gvt_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt*)* @init_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_device_info(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca %struct.intel_gvt_device_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %5 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %5, i32 0, i32 1
  store %struct.intel_gvt_device_info* %6, %struct.intel_gvt_device_info** %3, align 8
  %7 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %8 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %13, i32 0, i32 0
  store i32 8, i32* %14, align 8
  %15 = load i32, i32* @PCI_CFG_SPACE_EXP_SIZE, align 4
  %16 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %17 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %19 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %18, i32 0, i32 1
  store i32 2097152, i32* %19, align 4
  %20 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %21 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %23 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %22, i32 0, i32 2
  store i32 8388608, i32* %23, align 8
  %24 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %24, i32 0, i32 3
  store i32 8, i32* %25, align 4
  %26 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %26, i32 0, i32 4
  store i32 3, i32* %27, align 8
  %28 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %28, i32 0, i32 5
  store i32 8, i32* %29, align 4
  %30 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %31 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %30, i32 0, i32 6
  store i32 37748736, i32* %31, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %3, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
