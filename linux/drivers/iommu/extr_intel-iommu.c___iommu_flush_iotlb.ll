; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c___iommu_flush_iotlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c___iommu_flush_iotlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64, i32, i32 }

@DMA_TLB_IVT = common dso_local global i32 0, align 4
@DMA_TLB_WRITE_DRAIN = common dso_local global i32 0, align 4
@dmar_readq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Flush IOTLB failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"TLB flush request %Lx, actual %Lx\0A\00", align 1
@DMA_TLB_READ_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i32, i32, i32, i32)* @__iommu_flush_iotlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_flush_iotlb(%struct.intel_iommu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ecap_iotlb_offset(i32 %17)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %38 [
    i32 129, label %20
    i32 130, label %23
    i32 128, label %29
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* @DMA_TLB_IVT, align 4
  %22 = or i32 129, %21
  store i32 %22, i32* %12, align 4
  br label %40

23:                                               ; preds = %5
  %24 = load i32, i32* @DMA_TLB_IVT, align 4
  %25 = or i32 130, %24
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @DMA_TLB_DID(i32 %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %12, align 4
  br label %40

29:                                               ; preds = %5
  %30 = load i32, i32* @DMA_TLB_IVT, align 4
  %31 = or i32 128, %30
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DMA_TLB_DID(i32 %32)
  %34 = or i32 %31, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %13, align 4
  br label %40

38:                                               ; preds = %5
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38, %29, %23, %20
  %41 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %42 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @cap_write_drain(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @DMA_TLB_WRITE_DRAIN, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %52 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %51, i32 0, i32 0
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @raw_spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %59 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @dmar_writeq(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %50
  %67 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %68 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = add nsw i64 %72, 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @dmar_writeq(i64 %73, i32 %74)
  %76 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 8
  %79 = load i32, i32* @dmar_readq, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @DMA_TLB_IVT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %76, i32 %78, i32 %79, i32 %85, i32 %86)
  %88 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %89 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %88, i32 0, i32 0
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @raw_spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @DMA_TLB_IAIG(i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %66
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %66
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @DMA_TLB_IAIG(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @DMA_TLB_IIRG(i32 %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @DMA_TLB_IIRG(i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @DMA_TLB_IAIG(i32 %106)
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %105, i64 %107)
  br label %109

109:                                              ; preds = %103, %97
  ret void
}

declare dso_local i32 @ecap_iotlb_offset(i32) #1

declare dso_local i32 @DMA_TLB_DID(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @cap_write_drain(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmar_writeq(i64, i32) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @DMA_TLB_IAIG(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @DMA_TLB_IIRG(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
