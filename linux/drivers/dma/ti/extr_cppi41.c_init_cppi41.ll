; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_init_cppi41.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_init_cppi41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cppi41_dd = type { i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@QMGR_SCRATCH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QMGR_LRAM0_BASE = common dso_local global i64 0, align 8
@TOTAL_DESCS_NUM = common dso_local global i32 0, align 4
@QMGR_LRAM_SIZE = common dso_local global i64 0, align 8
@QMGR_LRAM1_BASE = common dso_local global i64 0, align 8
@DMA_TDFDQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cppi41_dd*)* @init_cppi41 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cppi41(%struct.device* %0, %struct.cppi41_dd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cppi41_dd*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cppi41_dd* %1, %struct.cppi41_dd** %5, align 8
  %7 = load i32, i32* @QMGR_SCRATCH_SIZE, align 4
  %8 = icmp sgt i32 %7, 16383
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @QMGR_SCRATCH_SIZE, align 4
  %13 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %14 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %13, i32 0, i32 3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @dma_alloc_coherent(%struct.device* %11, i32 %12, i32* %14, i32 %15)
  %17 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %18 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %20 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %28 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %31 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QMGR_LRAM0_BASE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @cppi_writel(i32 %29, i64 %34)
  %36 = load i32, i32* @TOTAL_DESCS_NUM, align 4
  %37 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %38 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QMGR_LRAM_SIZE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @cppi_writel(i32 %36, i64 %41)
  %43 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %44 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QMGR_LRAM1_BASE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @cppi_writel(i32 0, i64 %47)
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %51 = call i32 @init_descs(%struct.device* %49, %struct.cppi41_dd* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %26
  br label %68

55:                                               ; preds = %26
  %56 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %57 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %61 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_TDFDQ, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @cppi_writel(i32 %59, i64 %64)
  %66 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %67 = call i32 @init_sched(%struct.cppi41_dd* %66)
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %54
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %71 = call i32 @deinit_cppi41(%struct.device* %69, %struct.cppi41_dd* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %55, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @cppi_writel(i32, i64) #1

declare dso_local i32 @init_descs(%struct.device*, %struct.cppi41_dd*) #1

declare dso_local i32 @init_sched(%struct.cppi41_dd*) #1

declare dso_local i32 @deinit_cppi41(%struct.device*, %struct.cppi41_dd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
