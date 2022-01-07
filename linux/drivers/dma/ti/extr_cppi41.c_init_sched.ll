; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_init_sched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_init_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_dd = type { i32, i64 }

@DMA_SCHED_CTRL = common dso_local global i64 0, align 8
@SCHED_ENTRY1_IS_RX = common dso_local global i32 0, align 4
@SCHED_ENTRY3_IS_RX = common dso_local global i32 0, align 4
@DMA_SCHED_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi41_dd*)* @init_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sched(%struct.cppi41_dd* %0) #0 {
  %2 = alloca %struct.cppi41_dd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cppi41_dd* %0, %struct.cppi41_dd** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.cppi41_dd*, %struct.cppi41_dd** %2, align 8
  %7 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DMA_SCHED_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @cppi_writel(i32 0, i64 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.cppi41_dd*, %struct.cppi41_dd** %2, align 8
  %15 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @SCHED_ENTRY0_CHAN(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SCHED_ENTRY1_CHAN(i32 %21)
  %23 = load i32, i32* @SCHED_ENTRY1_IS_RX, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 1
  %29 = call i32 @SCHED_ENTRY2_CHAN(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  %34 = call i32 @SCHED_ENTRY3_CHAN(i32 %33)
  %35 = load i32, i32* @SCHED_ENTRY3_IS_RX, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cppi41_dd*, %struct.cppi41_dd** %2, align 8
  %41 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @DMA_SCHED_WORD(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @cppi_writel(i32 %39, i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %18
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 2
  store i32 %51, i32* %3, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load %struct.cppi41_dd*, %struct.cppi41_dd** %2, align 8
  %54 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul i32 %55, 2
  %57 = sub i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @DMA_SCHED_CTRL_EN, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.cppi41_dd*, %struct.cppi41_dd** %2, align 8
  %63 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DMA_SCHED_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @cppi_writel(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @cppi_writel(i32, i64) #1

declare dso_local i32 @SCHED_ENTRY0_CHAN(i32) #1

declare dso_local i32 @SCHED_ENTRY1_CHAN(i32) #1

declare dso_local i32 @SCHED_ENTRY2_CHAN(i32) #1

declare dso_local i32 @SCHED_ENTRY3_CHAN(i32) #1

declare dso_local i64 @DMA_SCHED_WORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
