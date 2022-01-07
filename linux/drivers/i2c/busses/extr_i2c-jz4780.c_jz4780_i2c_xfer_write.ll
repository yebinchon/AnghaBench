; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_xfer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_xfer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { i32, i32, i8*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@JZ4780_I2C_TIMEOUT = common dso_local global i32 0, align 4
@JZ4780_I2C_TXTL = common dso_local global i32 0, align 4
@TX_LEVEL = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM = common dso_local global i32 0, align 4
@JZ4780_I2C_INTM_MTXEMP = common dso_local global i16 0, align 2
@JZ4780_I2C_INTM_MTXABT = common dso_local global i16 0, align 2
@JZ4780_I2C_CTRL = common dso_local global i32 0, align 4
@JZ4780_I2C_CTRL_STPHLD = common dso_local global i16 0, align 2
@JZ4780_I2C_STA = common dso_local global i32 0, align 4
@JZ4780_I2C_STA_MSTACT = common dso_local global i16 0, align 2
@JZ4780_I2C_STA_TFE = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [20 x i8] c"write wait timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@JZ4780_I2C_TXABRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*, i8*, i32, i32, i32)* @jz4780_i2c_xfer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_xfer_write(%struct.jz4780_i2c* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.jz4780_i2c*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @JZ4780_I2C_TIMEOUT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 5
  %21 = mul nsw i32 %18, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %23 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %22, i32 0, i32 6
  %24 = load i64, i64* %15, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %32 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %36

33:                                               ; preds = %5
  %34 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %35 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %38 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %44 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %46 = load i32, i32* @JZ4780_I2C_TXTL, align 4
  %47 = load i16, i16* @TX_LEVEL, align 2
  %48 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %45, i32 %46, i16 zeroext %47)
  %49 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %50 = load i32, i32* @JZ4780_I2C_INTM, align 4
  %51 = load i16, i16* @JZ4780_I2C_INTM_MTXEMP, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @JZ4780_I2C_INTM_MTXABT, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %52, %54
  %56 = trunc i32 %55 to i16
  %57 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %49, i32 %50, i16 zeroext %56)
  %58 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %59 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %60 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %58, i32 %59)
  store i16 %60, i16* %14, align 2
  %61 = load i16, i16* @JZ4780_I2C_CTRL_STPHLD, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* %14, align 2
  %64 = zext i16 %63 to i32
  %65 = or i32 %64, %62
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %14, align 2
  %67 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %68 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %69 = load i16, i16* %14, align 2
  %70 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %67, i32 %68, i16 zeroext %69)
  %71 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %72 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %71, i32 0, i32 6
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %76 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %75, i32 0, i32 5
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @msecs_to_jiffies(i32 %77)
  %79 = call i64 @wait_for_completion_timeout(i32* %76, i32 %78)
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %36
  %83 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %84 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %124, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @JZ4780_I2C_TIMEOUT, align 4
  %89 = mul nsw i32 %88, 100
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %120, %87
  %92 = load i64, i64* %13, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  %95 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %96 = load i32, i32* @JZ4780_I2C_STA, align 4
  %97 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %95, i32 %96)
  store i16 %97, i16* %16, align 2
  %98 = load i16, i16* %16, align 2
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* @JZ4780_I2C_STA_MSTACT, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %94
  %105 = load i16, i16* %16, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* @JZ4780_I2C_STA_TFE, align 2
  %108 = zext i16 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %104, %94
  %113 = phi i1 [ true, %94 ], [ %111, %104 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %123

118:                                              ; preds = %112
  %119 = call i32 @udelay(i32 10)
  br label %120

120:                                              ; preds = %118
  %121 = load i64, i64* %13, align 8
  %122 = add nsw i64 %121, -1
  store i64 %122, i64* %13, align 8
  br label %91

123:                                              ; preds = %117, %91
  br label %124

124:                                              ; preds = %123, %82, %36
  %125 = load i64, i64* %13, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %129 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %127, %124
  %135 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %136 = load i32, i32* @JZ4780_I2C_TXABRT, align 4
  %137 = call zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c* %135, i32 %136)
  store i16 %137, i16* %14, align 2
  %138 = load i16, i16* %14, align 2
  %139 = icmp ne i16 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %6, align 8
  %142 = load i16, i16* %14, align 2
  %143 = call i32 @jz4780_i2c_txabrt(%struct.jz4780_i2c* %141, i16 zeroext %142)
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %140, %134
  %147 = load i32, i32* %11, align 4
  ret i32 %147
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @jz4780_i2c_txabrt(%struct.jz4780_i2c*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
