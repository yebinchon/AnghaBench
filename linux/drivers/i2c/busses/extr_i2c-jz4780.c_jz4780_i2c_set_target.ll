; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@JZ4780_I2C_STA = common dso_local global i32 0, align 4
@JZ4780_I2C_STA_TFE = common dso_local global i16 0, align 2
@JZ4780_I2C_STA_MSTACT = common dso_local global i16 0, align 2
@JZ4780_I2C_TAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"set device to address 0x%02x failed, STA=0x%04x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*, i8)* @jz4780_i2c_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_set_target(%struct.jz4780_i2c* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_i2c*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 5, i64* %7, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %4, align 8
  %10 = load i32, i32* @JZ4780_I2C_STA, align 4
  %11 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %9, i32 %10)
  store i16 %11, i16* %6, align 2
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @JZ4780_I2C_STA_TFE, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %8
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @JZ4780_I2C_STA_MSTACT, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %32

26:                                               ; preds = %18, %8
  %27 = call i32 @usleep_range(i32 5000, i32 15000)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %8, label %32

32:                                               ; preds = %28, %25
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %4, align 8
  %37 = load i32, i32* @JZ4780_I2C_TAR, align 4
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %36, i32 %37, i8 zeroext %38)
  store i32 0, i32* %3, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %4, align 8
  %42 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8, i8* %5, align 1
  %45 = load i16, i16* %6, align 2
  %46 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8 zeroext %44, i16 zeroext %45)
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
