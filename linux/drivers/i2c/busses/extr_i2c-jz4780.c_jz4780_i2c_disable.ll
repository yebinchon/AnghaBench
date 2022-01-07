; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@JZ4780_I2C_ENB = common dso_local global i32 0, align 4
@JZ4780_I2C_ENSTA = common dso_local global i32 0, align 4
@JZ4780_I2C_ENB_I2C = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [30 x i8] c"disable failed: ENSTA=0x%04x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*)* @jz4780_i2c_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_disable(%struct.jz4780_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_i2c*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %3, align 8
  store i64 5, i64* %5, align 8
  %6 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %7 = load i32, i32* @JZ4780_I2C_ENB, align 4
  %8 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %6, i32 %7, i32 0)
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %11 = load i32, i32* @JZ4780_I2C_ENSTA, align 4
  %12 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %10, i32 %11)
  store i16 %12, i16* %4, align 2
  %13 = load i16, i16* %4, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @JZ4780_I2C_ENB_I2C, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %34

20:                                               ; preds = %9
  %21 = call i32 @usleep_range(i32 5000, i32 15000)
  br label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %9, label %26

26:                                               ; preds = %22
  %27 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %28 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i16, i16* %4, align 2
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i16 zeroext %30)
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i32) #1

declare dso_local zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
