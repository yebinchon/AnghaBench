; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_err_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_err_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SE_GENI_M_CMD0 = common dso_local global i64 0, align 8
@SE_GENI_M_IRQ_STATUS = common dso_local global i64 0, align 8
@SE_GENI_STATUS = common dso_local global i64 0, align 8
@SE_GENI_IOS = common dso_local global i64 0, align 8
@SE_GENI_DMA_MODE_EN = common dso_local global i64 0, align 8
@SE_DMA_RX_IRQ_STAT = common dso_local global i64 0, align 8
@SE_DMA_TX_IRQ_STAT = common dso_local global i64 0, align 8
@SE_GENI_RX_FIFO_STATUS = common dso_local global i64 0, align 8
@SE_GENI_TX_FIFO_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"DMA:%d tx_stat:0x%x, rx_stat:0x%x, irq-stat:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"m_cmd:0x%x, geni_status:0x%x, geni_ios:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_i2c_dev*)* @geni_i2c_err_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_i2c_err_misc(%struct.geni_i2c_dev* %0) #0 {
  %2 = alloca %struct.geni_i2c_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %2, align 8
  %10 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SE_GENI_M_CMD0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl_relaxed(i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %18 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SE_GENI_M_IRQ_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl_relaxed(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %25 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SE_GENI_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl_relaxed(i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %32 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SE_GENI_IOS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @readl_relaxed(i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SE_GENI_DMA_MODE_EN, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @readl_relaxed(i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %1
  %48 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %49 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SE_DMA_RX_IRQ_STAT, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @readl_relaxed(i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SE_DMA_TX_IRQ_STAT, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i64 @readl_relaxed(i64 %60)
  store i64 %61, i64* %9, align 8
  br label %77

62:                                               ; preds = %1
  %63 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %64 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SE_GENI_RX_FIFO_STATUS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i64 @readl_relaxed(i64 %68)
  store i64 %69, i64* %8, align 8
  %70 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %71 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SE_GENI_TX_FIFO_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i64 @readl_relaxed(i64 %75)
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %62, %47
  %78 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %79 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %88 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %91, i64 %92, i64 %93)
  ret void
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
