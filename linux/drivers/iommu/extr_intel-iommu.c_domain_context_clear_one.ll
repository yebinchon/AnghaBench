; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_clear_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_clear_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)*, i32 (%struct.intel_iommu.1*, i32, i32, i32, i32)* }
%struct.intel_iommu.0 = type opaque
%struct.intel_iommu.1 = type opaque
%struct.context_entry = type { i32 }

@DMA_CCMD_MASK_NOBIT = common dso_local global i32 0, align 4
@DMA_CCMD_DEVICE_INVL = common dso_local global i32 0, align 4
@DMA_TLB_DSI_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i32, i32)* @domain_context_clear_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_context_clear_one(%struct.intel_iommu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.context_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %11 = icmp ne %struct.intel_iommu* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %64

13:                                               ; preds = %3
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.context_entry* @iommu_context_addr(%struct.intel_iommu* %18, i32 %19, i32 %20, i32 0)
  store %struct.context_entry* %21, %struct.context_entry** %8, align 8
  %22 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %23 = icmp ne %struct.context_entry* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  %25 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %26 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %25, i32 0, i32 1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %64

29:                                               ; preds = %13
  %30 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %31 = call i32 @context_domain_id(%struct.context_entry* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %33 = call i32 @context_clear_entry(%struct.context_entry* %32)
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %35 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %36 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %34, %struct.context_entry* %35, i32 4)
  %37 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %38 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %37, i32 0, i32 1
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %42 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.intel_iommu.1*, i32, i32, i32, i32)*, i32 (%struct.intel_iommu.1*, i32, i32, i32, i32)** %43, align 8
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %46 = bitcast %struct.intel_iommu* %45 to %struct.intel_iommu.1*
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @DMA_CCMD_MASK_NOBIT, align 4
  %53 = load i32, i32* @DMA_CCMD_DEVICE_INVL, align 4
  %54 = call i32 %44(%struct.intel_iommu.1* %46, i32 %47, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %56 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)** %57, align 8
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %60 = bitcast %struct.intel_iommu* %59 to %struct.intel_iommu.0*
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DMA_TLB_DSI_FLUSH, align 4
  %63 = call i32 %58(%struct.intel_iommu.0* %60, i32 %61, i32 0, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %29, %24, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.context_entry* @iommu_context_addr(%struct.intel_iommu*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @context_domain_id(%struct.context_entry*) #1

declare dso_local i32 @context_clear_entry(%struct.context_entry*) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.context_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
