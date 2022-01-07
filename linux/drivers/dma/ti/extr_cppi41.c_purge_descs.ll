; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_purge_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_purge_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cppi41_dd = type { i32, i32, i64 }

@ALLOC_DECS_NUM = common dso_local global i32 0, align 4
@DESCS_AREAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.cppi41_dd*)* @purge_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_descs(%struct.device* %0, %struct.cppi41_dd* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.cppi41_dd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.cppi41_dd* %1, %struct.cppi41_dd** %4, align 8
  %7 = load i32, i32* @ALLOC_DECS_NUM, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DESCS_AREAS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %17 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @QMGR_MEMBASE(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @cppi_writel(i32 0, i64 %21)
  %23 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %24 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @QMGR_MEMCTRL(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @cppi_writel(i32 0, i64 %28)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %33 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %36 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_coherent(%struct.device* %30, i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %11

42:                                               ; preds = %11
  ret void
}

declare dso_local i32 @cppi_writel(i32, i64) #1

declare dso_local i64 @QMGR_MEMBASE(i32) #1

declare dso_local i64 @QMGR_MEMCTRL(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
