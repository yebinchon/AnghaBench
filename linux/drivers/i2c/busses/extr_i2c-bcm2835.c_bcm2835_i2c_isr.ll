; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_i2c_dev = type { i32, i32, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@BCM2835_I2C_S = common dso_local global i32 0, align 4
@BCM2835_I2C_S_CLKT = common dso_local global i32 0, align 4
@BCM2835_I2C_S_ERR = common dso_local global i32 0, align 4
@BCM2835_I2C_S_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Got unexpected interrupt (from firmware?)\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@BCM2835_I2C_S_RXD = common dso_local global i32 0, align 4
@BCM2835_I2C_S_LEN = common dso_local global i32 0, align 4
@BCM2835_I2C_S_TXW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@BCM2835_I2C_S_RXR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@BCM2835_I2C_C = common dso_local global i32 0, align 4
@BCM2835_I2C_C_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm2835_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bcm2835_i2c_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bcm2835_i2c_dev*
  store %struct.bcm2835_i2c_dev* %10, %struct.bcm2835_i2c_dev** %6, align 8
  %11 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %12 = load i32, i32* @BCM2835_I2C_S, align 4
  %13 = call i32 @bcm2835_i2c_readl(%struct.bcm2835_i2c_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BCM2835_I2C_S_CLKT, align 4
  %16 = load i32, i32* @BCM2835_I2C_S_ERR, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %24 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %133

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BCM2835_I2C_S_DONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %25
  %31 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %32 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %37 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %56

40:                                               ; preds = %30
  %41 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %42 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %51 = call i32 @bcm2835_drain_rxfifo(%struct.bcm2835_i2c_dev* %50)
  %52 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %53 = load i32, i32* @BCM2835_I2C_S, align 4
  %54 = call i32 @bcm2835_i2c_readl(%struct.bcm2835_i2c_dev* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BCM2835_I2C_S_RXD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %63 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @BCM2835_I2C_S_LEN, align 4
  %68 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %69 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %72 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %133

74:                                               ; preds = %25
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @BCM2835_I2C_S_TXW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %81 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @BCM2835_I2C_S_LEN, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %89 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %133

90:                                               ; preds = %79
  %91 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %92 = call i32 @bcm2835_fill_txfifo(%struct.bcm2835_i2c_dev* %91)
  %93 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %94 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %99 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %104 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 1
  store %struct.TYPE_2__* %106, %struct.TYPE_2__** %104, align 8
  %107 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %108 = call i32 @bcm2835_i2c_start_transfer(%struct.bcm2835_i2c_dev* %107)
  br label %109

109:                                              ; preds = %102, %97, %90
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %3, align 4
  br label %150

111:                                              ; preds = %74
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @BCM2835_I2C_S_RXR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %118 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @BCM2835_I2C_S_LEN, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %126 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %133

127:                                              ; preds = %116
  %128 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %129 = call i32 @bcm2835_drain_rxfifo(%struct.bcm2835_i2c_dev* %128)
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %3, align 4
  br label %150

131:                                              ; preds = %111
  %132 = load i32, i32* @IRQ_NONE, align 4
  store i32 %132, i32* %3, align 4
  br label %150

133:                                              ; preds = %121, %84, %73, %21
  %134 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %135 = load i32, i32* @BCM2835_I2C_C, align 4
  %136 = load i32, i32* @BCM2835_I2C_C_CLEAR, align 4
  %137 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %134, i32 %135, i32 %136)
  %138 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %139 = load i32, i32* @BCM2835_I2C_S, align 4
  %140 = load i32, i32* @BCM2835_I2C_S_CLKT, align 4
  %141 = load i32, i32* @BCM2835_I2C_S_ERR, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @BCM2835_I2C_S_DONE, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %138, i32 %139, i32 %144)
  %146 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %6, align 8
  %147 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %146, i32 0, i32 1
  %148 = call i32 @complete(i32* %147)
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %133, %131, %127, %109
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @bcm2835_i2c_readl(%struct.bcm2835_i2c_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @bcm2835_drain_rxfifo(%struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @bcm2835_fill_txfifo(%struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @bcm2835_i2c_start_transfer(%struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
