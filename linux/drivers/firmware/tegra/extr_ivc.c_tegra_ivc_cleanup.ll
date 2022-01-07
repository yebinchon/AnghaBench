; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ivc = type { i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_ivc_cleanup(%struct.tegra_ivc* %0) #0 {
  %2 = alloca %struct.tegra_ivc*, align 8
  %3 = alloca i64, align 8
  store %struct.tegra_ivc* %0, %struct.tegra_ivc** %2, align 8
  %4 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = call i64 @tegra_ivc_total_queue_size(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %26 = call i32 @dma_unmap_single(i64 %19, i32 %23, i64 %24, i32 %25)
  %27 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %28 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %31 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %36 = call i32 @dma_unmap_single(i64 %29, i32 %33, i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @tegra_ivc_total_queue_size(i32) #1

declare dso_local i32 @dma_unmap_single(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
