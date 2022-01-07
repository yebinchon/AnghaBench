; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_poll_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_poll_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i64, i64 }

@MMIO_EVT_HEAD_OFFSET = common dso_local global i64 0, align 8
@MMIO_EVT_TAIL_OFFSET = common dso_local global i64 0, align 8
@EVENT_ENTRY_SIZE = common dso_local global i32 0, align 4
@EVT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @iommu_poll_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_poll_events(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %5 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %6 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMIO_EVT_HEAD_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %12 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MMIO_EVT_TAIL_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %21, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %23 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %24 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @iommu_print_event(%struct.amd_iommu* %22, i64 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @EVENT_ENTRY_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @EVT_BUFFER_SIZE, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %38 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MMIO_EVT_HEAD_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @iommu_print_event(%struct.amd_iommu*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
