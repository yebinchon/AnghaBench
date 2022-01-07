; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_drain_rxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_drain_rxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_i2c_dev = type { i64, i8** }

@BCM2835_I2C_S = common dso_local global i32 0, align 4
@BCM2835_I2C_S_RXD = common dso_local global i32 0, align 4
@BCM2835_I2C_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_i2c_dev*)* @bcm2835_drain_rxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_drain_rxfifo(%struct.bcm2835_i2c_dev* %0) #0 {
  %2 = alloca %struct.bcm2835_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_i2c_dev* %0, %struct.bcm2835_i2c_dev** %2, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %4
  %10 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %11 = load i32, i32* @BCM2835_I2C_S, align 4
  %12 = call i8* @bcm2835_i2c_readl(%struct.bcm2835_i2c_dev* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BCM2835_I2C_S_RXD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %34

19:                                               ; preds = %9
  %20 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %21 = load i32, i32* @BCM2835_I2C_FIFO, align 4
  %22 = call i8* @bcm2835_i2c_readl(%struct.bcm2835_i2c_dev* %20, i32 %21)
  %23 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %24 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  store i8* %22, i8** %25, align 8
  %26 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %27 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %27, align 8
  %30 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %2, align 8
  %31 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %4

34:                                               ; preds = %18, %4
  ret void
}

declare dso_local i8* @bcm2835_i2c_readl(%struct.bcm2835_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
