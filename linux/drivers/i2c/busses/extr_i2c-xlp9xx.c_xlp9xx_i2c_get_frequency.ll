; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xlp9xx_i2c_dev = type { i64, i64 }
%struct.clk = type { i32 }

@XLP9XX_I2C_IP_CLK_FREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"using default input frequency %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@XLP9XX_I2C_DEFAULT_FREQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"using default frequency %u\0A\00", align 1
@XLP9XX_I2C_HIGH_FREQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid frequency %u, using default\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.xlp9xx_i2c_dev*)* @xlp9xx_i2c_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp9xx_i2c_get_frequency(%struct.platform_device* %0, %struct.xlp9xx_i2c_dev* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.xlp9xx_i2c_dev* %1, %struct.xlp9xx_i2c_dev** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.clk* @devm_clk_get(i32* %9, i32* null)
  store %struct.clk* %10, %struct.clk** %5, align 8
  %11 = load %struct.clk*, %struct.clk** %5, align 8
  %12 = call i64 @IS_ERR(%struct.clk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i64, i64* @XLP9XX_I2C_IP_CLK_FREQ, align 8
  %16 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %17 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %21 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.clk*, %struct.clk** %5, align 8
  %26 = call i64 @clk_get_rate(%struct.clk* %25)
  %27 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %14
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @device_property_read_u32(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i64, i64* @XLP9XX_I2C_DEFAULT_FREQ, align 8
  store i64 %36, i64* %6, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  br label %55

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @XLP9XX_I2C_HIGH_FREQ, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %41
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* @XLP9XX_I2C_DEFAULT_FREQ, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %4, align 8
  %58 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  ret i32 0
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
