; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_get_ir_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_get_ir_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32, i32, i32, i32 }
%struct.intel_iommu = type { %struct.irq_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_domain* (%struct.irq_alloc_info*)* @intel_get_ir_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_domain* @intel_get_ir_irq_domain(%struct.irq_alloc_info* %0) #0 {
  %2 = alloca %struct.irq_domain*, align 8
  %3 = alloca %struct.irq_alloc_info*, align 8
  %4 = alloca %struct.intel_iommu*, align 8
  store %struct.irq_alloc_info* %0, %struct.irq_alloc_info** %3, align 8
  store %struct.intel_iommu* null, %struct.intel_iommu** %4, align 8
  %5 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %6 = icmp ne %struct.irq_alloc_info* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.irq_domain* null, %struct.irq_domain** %2, align 8
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %10 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %27 [
    i32 130, label %12
    i32 131, label %17
    i32 129, label %22
    i32 128, label %22
  ]

12:                                               ; preds = %8
  %13 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %14 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.intel_iommu* @map_ioapic_to_ir(i32 %15)
  store %struct.intel_iommu* %16, %struct.intel_iommu** %4, align 8
  br label %29

17:                                               ; preds = %8
  %18 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %19 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.intel_iommu* @map_hpet_to_ir(i32 %20)
  store %struct.intel_iommu* %21, %struct.intel_iommu** %4, align 8
  br label %29

22:                                               ; preds = %8, %8
  %23 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %24 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.intel_iommu* @map_dev_to_ir(i32 %25)
  store %struct.intel_iommu* %26, %struct.intel_iommu** %4, align 8
  br label %29

27:                                               ; preds = %8
  %28 = call i32 @BUG_ON(i32 1)
  br label %29

29:                                               ; preds = %27, %22, %17, %12
  %30 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %31 = icmp ne %struct.intel_iommu* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %34 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %33, i32 0, i32 0
  %35 = load %struct.irq_domain*, %struct.irq_domain** %34, align 8
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi %struct.irq_domain* [ %35, %32 ], [ null, %36 ]
  store %struct.irq_domain* %38, %struct.irq_domain** %2, align 8
  br label %39

39:                                               ; preds = %37, %7
  %40 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  ret %struct.irq_domain* %40
}

declare dso_local %struct.intel_iommu* @map_ioapic_to_ir(i32) #1

declare dso_local %struct.intel_iommu* @map_hpet_to_ir(i32) #1

declare dso_local %struct.intel_iommu* @map_dev_to_ir(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
