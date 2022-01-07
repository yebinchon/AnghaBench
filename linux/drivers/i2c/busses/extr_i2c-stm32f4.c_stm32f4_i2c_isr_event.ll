; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_isr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f4.c_stm32f4_i2c_isr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f4_i2c_dev = type { i64, i32, %struct.stm32f4_i2c_msg }
%struct.stm32f4_i2c_msg = type { i32 }

@STM32F4_I2C_SR1_ITEVTEN_MASK = common dso_local global i32 0, align 4
@STM32F4_I2C_CR2 = common dso_local global i64 0, align 8
@STM32F4_I2C_CR2_IRQ_MASK = common dso_local global i32 0, align 4
@STM32F4_I2C_CR2_ITBUFEN = common dso_local global i32 0, align 4
@STM32F4_I2C_SR1_ITBUFEN_MASK = common dso_local global i32 0, align 4
@STM32F4_I2C_SR1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"spurious evt irq (status=0x%08x, ien=0x%08x)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@STM32F4_I2C_SR1_SB = common dso_local global i32 0, align 4
@STM32F4_I2C_SR1_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@STM32F4_I2C_SR2 = common dso_local global i64 0, align 8
@STM32F4_I2C_SR1_TXE = common dso_local global i32 0, align 4
@STM32F4_I2C_SR1_RXNE = common dso_local global i32 0, align 4
@STM32F4_I2C_SR1_BTF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32f4_i2c_isr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_i2c_isr_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32f4_i2c_dev*, align 8
  %7 = alloca %struct.stm32f4_i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.stm32f4_i2c_dev*
  store %struct.stm32f4_i2c_dev* %14, %struct.stm32f4_i2c_dev** %6, align 8
  %15 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %16 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %15, i32 0, i32 2
  store %struct.stm32f4_i2c_msg* %16, %struct.stm32f4_i2c_msg** %7, align 8
  %17 = load i32, i32* @STM32F4_I2C_SR1_ITEVTEN_MASK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %19 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STM32F4_I2C_CR2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @STM32F4_I2C_CR2_IRQ_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @STM32F4_I2C_CR2_ITBUFEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @STM32F4_I2C_SR1_ITBUFEN_MASK, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %37 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STM32F4_I2C_SR1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %35
  %48 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %49 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @IRQ_NONE, align 4
  store i32 %54, i32* %3, align 4
  br label %150

55:                                               ; preds = %35
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @STM32F4_I2C_SR1_SB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %62 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %7, align 8
  %63 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @stm32f4_i2c_write_byte(%struct.stm32f4_i2c_dev* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @STM32F4_I2C_SR1_ADDR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %7, align 8
  %73 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_M_RD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %80 = call i32 @stm32f4_i2c_handle_rx_addr(%struct.stm32f4_i2c_dev* %79)
  br label %88

81:                                               ; preds = %71
  %82 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %83 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @STM32F4_I2C_SR2, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl_relaxed(i64 %86)
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i32, i32* @STM32F4_I2C_CR2_ITBUFEN, align 4
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %94 = getelementptr inbounds %struct.stm32f4_i2c_dev, %struct.stm32f4_i2c_dev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @STM32F4_I2C_CR2, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel_relaxed(i32 %92, i64 %97)
  br label %99

99:                                               ; preds = %88, %66
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @STM32F4_I2C_SR1_TXE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %7, align 8
  %106 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @I2C_M_RD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %113 = call i32 @stm32f4_i2c_handle_write(%struct.stm32f4_i2c_dev* %112)
  br label %114

114:                                              ; preds = %111, %104, %99
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @STM32F4_I2C_SR1_RXNE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %7, align 8
  %121 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @I2C_M_RD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %128 = call i32 @stm32f4_i2c_handle_read(%struct.stm32f4_i2c_dev* %127)
  br label %129

129:                                              ; preds = %126, %119, %114
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @STM32F4_I2C_SR1_BTF, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %129
  %135 = load %struct.stm32f4_i2c_msg*, %struct.stm32f4_i2c_msg** %7, align 8
  %136 = getelementptr inbounds %struct.stm32f4_i2c_msg, %struct.stm32f4_i2c_msg* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @I2C_M_RD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %143 = call i32 @stm32f4_i2c_handle_rx_done(%struct.stm32f4_i2c_dev* %142)
  br label %147

144:                                              ; preds = %134
  %145 = load %struct.stm32f4_i2c_dev*, %struct.stm32f4_i2c_dev** %6, align 8
  %146 = call i32 @stm32f4_i2c_handle_write(%struct.stm32f4_i2c_dev* %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %129
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %47
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @stm32f4_i2c_write_byte(%struct.stm32f4_i2c_dev*, i32) #1

declare dso_local i32 @stm32f4_i2c_handle_rx_addr(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32f4_i2c_handle_write(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @stm32f4_i2c_handle_read(%struct.stm32f4_i2c_dev*) #1

declare dso_local i32 @stm32f4_i2c_handle_rx_done(%struct.stm32f4_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
