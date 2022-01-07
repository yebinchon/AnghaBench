; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_poll_ppr_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_poll_ppr_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i64, i32* }

@MMIO_PPR_HEAD_OFFSET = common dso_local global i64 0, align 8
@MMIO_PPR_TAIL_OFFSET = common dso_local global i64 0, align 8
@LOOP_TIMEOUT = common dso_local global i32 0, align 4
@PPR_ENTRY_SIZE = common dso_local global i32 0, align 4
@PPR_LOG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @iommu_poll_ppr_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_poll_ppr_log(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %8 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %9 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %15 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMIO_PPR_HEAD_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %21 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMIO_PPR_TAIL_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %54, %13
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %26
  %31 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %32 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to i64*
  store i64* %37, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %51, %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @LOOP_TIMEOUT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i64*, i64** %5, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load volatile i64, i64* %44, align 8
  %46 = call i64 @PPR_REQ_TYPE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %54

49:                                               ; preds = %42
  %50 = call i32 @udelay(i32 1)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %38

54:                                               ; preds = %48, %38
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load volatile i64, i64* %56, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %57, i64* %58, align 16
  %59 = load i64*, i64** %5, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load volatile i64, i64* %60, align 8
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store volatile i64 0, i64* %64, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store volatile i64 0, i64* %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @PPR_ENTRY_SIZE, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @PPR_LOG_SIZE, align 4
  %71 = srem i32 %69, %70
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %74 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MMIO_PPR_HEAD_OFFSET, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %81 = call i32 @iommu_handle_ppr_entry(%struct.amd_iommu* %79, i64* %80)
  %82 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %83 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MMIO_PPR_HEAD_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  store i32 %87, i32* %3, align 4
  %88 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %89 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MMIO_PPR_TAIL_OFFSET, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @readl(i64 %92)
  store i32 %93, i32* %4, align 4
  br label %26

94:                                               ; preds = %12, %26
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PPR_REQ_TYPE(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @iommu_handle_ppr_entry(%struct.amd_iommu*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
