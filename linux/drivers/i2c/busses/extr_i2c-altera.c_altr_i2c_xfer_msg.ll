; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altr_i2c_dev = type { i32, i32, i64, i32, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32, i32 }

@ALTR_I2C_ISR_RXOF = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_ARB = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_NACK = common dso_local global i32 0, align 4
@ALTR_I2C_RX_DATA = common dso_local global i64 0, align 8
@ALTR_I2C_RX_FIFO_LVL = common dso_local global i64 0, align 8
@ALTR_I2C_TFR_CMD_STA = common dso_local global i32 0, align 4
@ALTR_I2C_TFR_CMD = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@ALTR_I2C_ISER_RXOF_EN = common dso_local global i32 0, align 4
@ALTR_I2C_ISER_RXRDY_EN = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_TXRDY = common dso_local global i32 0, align 4
@ALTR_I2C_XFER_TIMEOUT = common dso_local global i32 0, align 4
@ALTR_I2C_STATUS = common dso_local global i64 0, align 8
@ALTR_I2C_STAT_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Core Status not IDLE...\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Transaction timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altr_i2c_dev*, %struct.i2c_msg*)* @altr_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altr_i2c_xfer_msg(%struct.altr_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.altr_i2c_dev*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.altr_i2c_dev* %0, %struct.altr_i2c_dev** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %9 = load i32, i32* @ALTR_I2C_ISR_RXOF, align 4
  %10 = load i32, i32* @ALTR_I2C_ISR_ARB, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ALTR_I2C_ISR_NACK, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %15 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %17 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %17, i32 0, i32 6
  store %struct.i2c_msg* %16, %struct.i2c_msg** %18, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %23 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %30 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %31, i32 0, i32 3
  %33 = call i32 @reinit_completion(i32* %32)
  %34 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %35 = call i32 @altr_i2c_core_enable(%struct.altr_i2c_dev* %34)
  br label %36

36:                                               ; preds = %43, %2
  %37 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %38 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ALTR_I2C_RX_DATA, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %45 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ALTR_I2C_RX_FIFO_LVL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %36, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ALTR_I2C_TFR_CMD_STA, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %56 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ALTR_I2C_TFR_CMD, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I2C_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %51
  %68 = load i32, i32* @ALTR_I2C_ISER_RXOF_EN, align 4
  %69 = load i32, i32* @ALTR_I2C_ISER_RXRDY_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @altr_i2c_int_enable(%struct.altr_i2c_dev* %73, i32 %74, i32 1)
  %76 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %77 = call i32 @altr_i2c_transfer(%struct.altr_i2c_dev* %76, i32 0)
  br label %87

78:                                               ; preds = %51
  %79 = load i32, i32* @ALTR_I2C_ISR_TXRDY, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @altr_i2c_int_enable(%struct.altr_i2c_dev* %82, i32 %83, i32 1)
  %85 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %86 = call i32 @altr_i2c_fill_tx_fifo(%struct.altr_i2c_dev* %85)
  br label %87

87:                                               ; preds = %78, %67
  %88 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %89 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %88, i32 0, i32 3
  %90 = load i32, i32* @ALTR_I2C_XFER_TIMEOUT, align 4
  %91 = call i64 @wait_for_completion_timeout(i32* %89, i32 %90)
  store i64 %91, i64* %6, align 8
  %92 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @altr_i2c_int_enable(%struct.altr_i2c_dev* %92, i32 %93, i32 0)
  %95 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %96 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ALTR_I2C_STATUS, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  %101 = load i32, i32* @ALTR_I2C_STAT_CORE, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %87
  %106 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %107 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %87
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  %116 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %117 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %119 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %113, %110
  %123 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %124 = call i32 @altr_i2c_core_disable(%struct.altr_i2c_dev* %123)
  %125 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %3, align 8
  %126 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  ret i32 %127
}

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @altr_i2c_core_enable(%struct.altr_i2c_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @altr_i2c_int_enable(%struct.altr_i2c_dev*, i32, i32) #1

declare dso_local i32 @altr_i2c_transfer(%struct.altr_i2c_dev*, i32) #1

declare dso_local i32 @altr_i2c_fill_tx_fifo(%struct.altr_i2c_dev*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @altr_i2c_core_disable(%struct.altr_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
