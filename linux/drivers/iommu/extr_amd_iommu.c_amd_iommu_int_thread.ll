; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_int_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_int_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i64 }

@MMIO_STATUS_OFFSET = common dso_local global i64 0, align 8
@AMD_IOMMU_INT_MASK = common dso_local global i32 0, align 4
@MMIO_STATUS_EVT_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Processing IOMMU Event Log\0A\00", align 1
@MMIO_STATUS_PPR_INT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Processing IOMMU PPR Log\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MMIO_STATUS_GALOG_INT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_int_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amd_iommu*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.amd_iommu*
  store %struct.amd_iommu* %8, %struct.amd_iommu** %5, align 8
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %10 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMIO_STATUS_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AMD_IOMMU_INT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load i32, i32* @AMD_IOMMU_INT_MASK, align 4
  %22 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %23 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMIO_STATUS_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MMIO_STATUS_EVT_INT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = call i32 @pr_devel(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %35 = call i32 @iommu_poll_events(%struct.amd_iommu* %34)
  br label %36

36:                                               ; preds = %32, %20
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MMIO_STATUS_PPR_INT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %44 = call i32 @iommu_poll_ppr_log(%struct.amd_iommu* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %47 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MMIO_STATUS_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %6, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %53
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @iommu_poll_events(%struct.amd_iommu*) #1

declare dso_local i32 @iommu_poll_ppr_log(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
