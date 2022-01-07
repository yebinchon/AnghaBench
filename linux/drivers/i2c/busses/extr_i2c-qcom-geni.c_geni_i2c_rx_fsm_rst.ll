; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_rx_fsm_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_rx_fsm_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@RST_TIMEOUT = common dso_local global i64 0, align 8
@SE_DMA_RX_FSM_RST = common dso_local global i64 0, align 8
@SE_DMA_RX_IRQ_STAT = common dso_local global i64 0, align 8
@RX_RESET_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Timeout resetting RX_FSM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_i2c_dev*)* @geni_i2c_rx_fsm_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_i2c_rx_fsm_rst(%struct.geni_i2c_dev* %0) #0 {
  %2 = alloca %struct.geni_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %2, align 8
  %5 = load i64, i64* @RST_TIMEOUT, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SE_DMA_RX_FSM_RST, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 1, i64 %11)
  br label %13

13:                                               ; preds = %33, %1
  %14 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @wait_for_completion_timeout(i32* %15, i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SE_DMA_RX_IRQ_STAT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl_relaxed(i64 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RX_RESET_DONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  br i1 %34, label %13, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @RX_RESET_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %42 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
