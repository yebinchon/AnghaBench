; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_txabrt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_txabrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { i64, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"txabrt: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"device addr=%x\0A\00", align 1
@JZ4780_I2C_TAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"send cmd count:%d  %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"receive data count:%d  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"I2C TXABRT[%d]=%s\0A\00", align 1
@jz4780_i2c_abrt_src = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_i2c*, i32)* @jz4780_i2c_txabrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_i2c_txabrt(%struct.jz4780_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.jz4780_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %16 = load i32, i32* @JZ4780_I2C_TAR, align 4
  %17 = call i32 @jz4780_i2c_readw(%struct.jz4780_i2c* %15, i32 %16)
  %18 = sext i32 %17 to i64
  %19 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %21 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %24 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %27 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %30 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %25, i32 %33)
  %35 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %36 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %39 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %45 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %40, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %71, %2
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %3, align 8
  %61 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** @jz4780_i2c_abrt_src, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %59, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %50

74:                                               ; preds = %50
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
