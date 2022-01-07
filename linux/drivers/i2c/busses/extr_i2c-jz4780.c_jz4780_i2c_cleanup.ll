; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@JZ4780_I2C_CTRL = common dso_local global i32 0, align 4
@JZ4780_I2C_CTRL_STPHLD = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM = common dso_local global i32 0, align 4
@JZ4780_I2C_CTXABRT = common dso_local global i32 0, align 4
@JZ4780_I2C_CINTR = common dso_local global i32 0, align 4
@JZ4780_I2C_ENB_I2C = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [42 x i8] c"unable to disable device during cleanup!\0A\00", align 1
@JZ4780_I2C_INTST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"device has interrupts after a complete cleanup!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*)* @jz4780_i2c_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_cleanup(%struct.jz4780_i2c* %0) #0 {
  %2 = alloca %struct.jz4780_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %2, align 8
  %6 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %6, i32 0, i32 1
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %11 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %12 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %10, i32 %11)
  store i16 %12, i16* %5, align 2
  %13 = load i16, i16* @JZ4780_I2C_CTRL_STPHLD, align 2
  %14 = zext i16 %13 to i32
  %15 = xor i32 %14, -1
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, %15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %5, align 2
  %20 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %21 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %22 = load i16, i16* %5, align 2
  %23 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %20, i32 %21, i16 zeroext %22)
  %24 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %25 = load i32, i32* @JZ4780_I2C_INTM, align 4
  %26 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %24, i32 %25, i16 zeroext 0)
  %27 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %28 = load i32, i32* @JZ4780_I2C_CTXABRT, align 4
  %29 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %27, i32 %28)
  %30 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %31 = load i32, i32* @JZ4780_I2C_CINTR, align 4
  %32 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %30, i32 %31)
  %33 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %34 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %35 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %33, i32 %34)
  store i16 %35, i16* %5, align 2
  %36 = load i16, i16* @JZ4780_I2C_ENB_I2C, align 2
  %37 = zext i16 %36 to i32
  %38 = xor i32 %37, -1
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, %38
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %5, align 2
  %43 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %44 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %45 = load i16, i16* %5, align 2
  %46 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %43, i32 %44, i16 zeroext %45)
  %47 = call i32 @udelay(i32 10)
  %48 = load i16, i16* @JZ4780_I2C_ENB_I2C, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* %5, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %5, align 2
  %54 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %55 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %56 = load i16, i16* %5, align 2
  %57 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %54, i32 %55, i16 zeroext %56)
  %58 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %59 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %58, i32 0, i32 1
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %63 = call i32 @jz4780_i2c_disable(%struct.jz4780_i2c* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %1
  %67 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %68 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %1
  %72 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %73 = load i32, i32* @JZ4780_I2C_INTM, align 4
  %74 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %72, i32 %73)
  %75 = zext i16 %74 to i32
  %76 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %77 = load i32, i32* @JZ4780_I2C_INTST, align 4
  %78 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %76, i32 %77)
  %79 = zext i16 %78 to i32
  %80 = and i32 %75, %79
  %81 = trunc i32 %80 to i16
  %82 = call i64 @unlikely(i16 zeroext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %86 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %71
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @jz4780_i2c_disable(%struct.jz4780_i2c*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @unlikely(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
