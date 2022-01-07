; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_get_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_get_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32, i32 }
%struct.intel_iommu = type { %struct.irq_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_domain* (%struct.irq_alloc_info*)* @intel_get_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_domain* @intel_get_irq_domain(%struct.irq_alloc_info* %0) #0 {
  %2 = alloca %struct.irq_domain*, align 8
  %3 = alloca %struct.irq_alloc_info*, align 8
  %4 = alloca %struct.intel_iommu*, align 8
  store %struct.irq_alloc_info* %0, %struct.irq_alloc_info** %3, align 8
  %5 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %6 = icmp ne %struct.irq_alloc_info* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.irq_domain* null, %struct.irq_domain** %2, align 8
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %10 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %8, %8
  %13 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %14 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.intel_iommu* @map_dev_to_ir(i32 %15)
  store %struct.intel_iommu* %16, %struct.intel_iommu** %4, align 8
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %18 = icmp ne %struct.intel_iommu* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %21 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %20, i32 0, i32 0
  %22 = load %struct.irq_domain*, %struct.irq_domain** %21, align 8
  store %struct.irq_domain* %22, %struct.irq_domain** %2, align 8
  br label %26

23:                                               ; preds = %12
  br label %25

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24, %23
  store %struct.irq_domain* null, %struct.irq_domain** %2, align 8
  br label %26

26:                                               ; preds = %25, %19, %7
  %27 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  ret %struct.irq_domain* %27
}

declare dso_local %struct.intel_iommu* @map_dev_to_ir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
