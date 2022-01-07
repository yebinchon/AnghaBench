; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_flush_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_flush_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64 }

@SSC_STA = common dso_local global i64 0, align 8
@SSC_STA_RIR = common dso_local global i32 0, align 4
@SSC_RXFIFO_SIZE = common dso_local global i32 0, align 4
@SSC_RX_FSTAT = common dso_local global i64 0, align 8
@SSC_RX_FSTAT_STATUS = common dso_local global i32 0, align 4
@SSC_RBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*)* @st_i2c_flush_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_flush_rx_fifo(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca %struct.st_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %2, align 8
  %5 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSC_STA, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  %11 = load i32, i32* @SSC_STA_RIR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @SSC_RXFIFO_SIZE, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %18 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SSC_RX_FSTAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  %23 = load i32, i32* @SSC_RX_FSTAT_STATUS, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %14
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %32 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SSC_RBUF, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl_relaxed(i64 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %26

40:                                               ; preds = %26
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
