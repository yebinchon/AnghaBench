; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_rd_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_rd_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64, %struct.st_i2c_client }
%struct.st_i2c_client = type { i32 }

@SSC_STA = common dso_local global i64 0, align 8
@SSC_STA_TX_FIFO_FULL = common dso_local global i32 0, align 4
@SSC_TX_FSTAT = common dso_local global i64 0, align 8
@SSC_TX_FSTAT_STATUS = common dso_local global i32 0, align 4
@SSC_TXFIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*, i32)* @st_i2c_rd_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_rd_fill_tx_fifo(%struct.st_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.st_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %9, i32 0, i32 1
  store %struct.st_i2c_client* %10, %struct.st_i2c_client** %5, align 8
  %11 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSC_STA, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SSC_STA_TX_FIFO_FULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %24 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SSC_TX_FSTAT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @SSC_TX_FSTAT_STATUS, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SSC_TXFIFO_SIZE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load i32, i32* @SSC_TXFIFO_SIZE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %37
  br label %44

44:                                               ; preds = %50, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %49 = call i32 @st_i2c_write_tx_fifo(%struct.st_i2c_dev* %48, i32 255)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  %53 = load %struct.st_i2c_client*, %struct.st_i2c_client** %5, align 8
  %54 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %44

57:                                               ; preds = %21, %44
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @st_i2c_write_tx_fifo(%struct.st_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
