; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp9xx_i2c_dev = type { i32*, i32 }

@XLP9XX_I2C_FIFO_SIZE = common dso_local global i32 0, align 4
@XLP9XX_I2C_MTXFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp9xx_i2c_dev*)* @xlp9xx_i2c_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp9xx_i2c_fill_tx_fifo(%struct.xlp9xx_i2c_dev* %0) #0 {
  %2 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.xlp9xx_i2c_dev* %0, %struct.xlp9xx_i2c_dev** %2, align 8
  %6 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @XLP9XX_I2C_FIFO_SIZE, align 4
  %13 = call i64 @min(i32 %11, i32 %12)
  store i64 %13, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %20 = load i32, i32* @XLP9XX_I2C_MTXFIFO, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %19, i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %32 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %37
  store i32* %41, i32** %39, align 8
  ret void
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
