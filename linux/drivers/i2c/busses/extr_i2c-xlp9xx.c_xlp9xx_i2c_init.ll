; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp9xx_i2c_dev = type { i32, i32 }

@XLP9XX_I2C_CTRL = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_RST = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_EN = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_MASTER = common dso_local global i32 0, align 4
@XLP9XX_I2C_DIV = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlp9xx_i2c_dev*)* @xlp9xx_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp9xx_i2c_init(%struct.xlp9xx_i2c_dev* %0) #0 {
  %2 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.xlp9xx_i2c_dev* %0, %struct.xlp9xx_i2c_dev** %2, align 8
  %4 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DIV_ROUND_UP(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 8
  %13 = sdiv i32 %12, 5
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %16 = load i32, i32* @XLP9XX_I2C_CTRL, align 4
  %17 = load i32, i32* @XLP9XX_I2C_CTRL_RST, align 4
  %18 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %20 = load i32, i32* @XLP9XX_I2C_CTRL, align 4
  %21 = load i32, i32* @XLP9XX_I2C_CTRL_EN, align 4
  %22 = load i32, i32* @XLP9XX_I2C_CTRL_MASTER, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %19, i32 %20, i32 %23)
  %25 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %26 = load i32, i32* @XLP9XX_I2C_DIV, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %30 = load i32, i32* @XLP9XX_I2C_INTEN, align 4
  %31 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %29, i32 %30, i32 0)
  ret i32 0
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
