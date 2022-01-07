; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32* }

@FIFO_SIZE = common dso_local global i64 0, align 8
@MST_TX_FIFO = common dso_local global i64 0, align 8
@MST_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axxia_i2c_dev*)* @axxia_i2c_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev* %0) #0 {
  %2 = alloca %struct.axxia_i2c_dev*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %2, align 8
  %7 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %7, i32 0, i32 2
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  store %struct.i2c_msg* %9, %struct.i2c_msg** %3, align 8
  %10 = load i64, i64* @FIFO_SIZE, align 8
  %11 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MST_TX_FIFO, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  %17 = sub i64 %10, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %23 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = call i32 @min(i64 %18, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %31 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %40, %1
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %45 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %52 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MST_DATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %36

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
