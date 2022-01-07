; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_xfer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_xfer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { i8*, i32, i64, i32*, %struct.TYPE_2__, i32*, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@JZ4780_I2C_TIMEOUT = common dso_local global i32 0, align 4
@JZ4780_I2C_FIFO_LEN = common dso_local global i32 0, align 4
@JZ4780_I2C_RXTL = common dso_local global i32 0, align 4
@RX_LEVEL = common dso_local global i16 0, align 2
@JZ4780_I2C_TXTL = common dso_local global i32 0, align 4
@TX_LEVEL = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM = common dso_local global i32 0, align 4
@JZ4780_I2C_INTM_MRXFL = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM_MTXEMP = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM_MTXABT = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM_MRXOF = common dso_local global i16 0, align 2
@JZ4780_I2C_CTRL = common dso_local global i32 0, align 4
@JZ4780_I2C_CTRL_STPHLD = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [18 x i8] c"irq read timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"send cmd count:%d  %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"receive data count:%d  %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@JZ4780_I2C_TXABRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*, i8*, i32, i32, i32)* @jz4780_i2c_xfer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_xfer_read(%struct.jz4780_i2c* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.jz4780_i2c*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @JZ4780_I2C_TIMEOUT, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 5
  %19 = mul nsw i32 %16, %18
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @memset(i8* %20, i32 0, i32 %21)
  %23 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %24 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %23, i32 0, i32 7
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %28 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %30 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %33 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %36 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %38 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %40 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %39, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @JZ4780_I2C_FIFO_LEN, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %5
  %45 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %46 = load i32, i32* @JZ4780_I2C_RXTL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = trunc i32 %48 to i16
  %50 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %45, i32 %46, i16 zeroext %49)
  br label %56

51:                                               ; preds = %5
  %52 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %53 = load i32, i32* @JZ4780_I2C_RXTL, align 4
  %54 = load i16, i16* @RX_LEVEL, align 2
  %55 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %52, i32 %53, i16 zeroext %54)
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %58 = load i32, i32* @JZ4780_I2C_TXTL, align 4
  %59 = load i16, i16* @TX_LEVEL, align 2
  %60 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %57, i32 %58, i16 zeroext %59)
  %61 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %62 = load i32, i32* @JZ4780_I2C_INTM, align 4
  %63 = load i16, i16* @JZ4780_I2C_INTM_MRXFL, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @JZ4780_I2C_INTM_MTXEMP, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %64, %66
  %68 = load i16, i16* @JZ4780_I2C_INTM_MTXABT, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = load i16, i16* @JZ4780_I2C_INTM_MRXOF, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %70, %72
  %74 = trunc i32 %73 to i16
  %75 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %61, i32 %62, i16 zeroext %74)
  %76 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %77 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %78 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %76, i32 %77)
  store i16 %78, i16* %14, align 2
  %79 = load i16, i16* @JZ4780_I2C_CTRL_STPHLD, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* %14, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %14, align 2
  %85 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %86 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %87 = load i16, i16* %14, align 2
  %88 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %85, i32 %86, i16 zeroext %87)
  %89 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %90 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %89, i32 0, i32 7
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %94 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %93, i32 0, i32 6
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @msecs_to_jiffies(i32 %95)
  %97 = call i64 @wait_for_completion_timeout(i32* %94, i32 %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %56
  %101 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %102 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %106 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %109 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %112 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %115 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_dbg(i32* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %110, i32 %118)
  %120 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %121 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %124 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %127 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %130 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %125, i32 %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %100, %56
  %138 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %139 = load i32, i32* @JZ4780_I2C_TXABRT, align 4
  %140 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %138, i32 %139)
  store i16 %140, i16* %14, align 2
  %141 = load i16, i16* %14, align 2
  %142 = icmp ne i16 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %145 = load i16, i16* %14, align 2
  %146 = call i32 @jz4780_i2c_txabrt(%struct.jz4780_i2c* %144, i16 zeroext %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %143, %137
  %150 = load i32, i32* %11, align 4
  ret i32 %150
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @jz4780_i2c_txabrt(%struct.jz4780_i2c*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
