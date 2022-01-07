; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_stats_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_stats_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_stats = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Stats DMA allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.bnxt_qplib_stats*)* @bnxt_qplib_alloc_stats_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_alloc_stats_ctx(%struct.pci_dev* %0, %struct.bnxt_qplib_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.bnxt_qplib_stats*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.bnxt_qplib_stats* %1, %struct.bnxt_qplib_stats** %5, align 8
  %6 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %7 = call i32 @memset(%struct.bnxt_qplib_stats* %6, i32 0, i32 16)
  %8 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %9 = getelementptr inbounds %struct.bnxt_qplib_stats, %struct.bnxt_qplib_stats* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  %10 = call i32 @ALIGN(i32 4, i32 128)
  %11 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_stats, %struct.bnxt_qplib_stats* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_stats, %struct.bnxt_qplib_stats* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_stats, %struct.bnxt_qplib_stats* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @dma_alloc_coherent(i32* %14, i32 %17, i32* %19, i32 %20)
  %22 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %23 = getelementptr inbounds %struct.bnxt_qplib_stats, %struct.bnxt_qplib_stats* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnxt_qplib_stats*, %struct.bnxt_qplib_stats** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_qplib_stats, %struct.bnxt_qplib_stats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.bnxt_qplib_stats*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
