; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_smbus_check_pec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_smbus_check_pec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32f7_i2c_dev = type { i32, i64, %struct.stm32f7_i2c_msg }
%struct.stm32f7_i2c_msg = type { i32, i64* }

@STM32F7_I2C_PECR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unsupported smbus protocol for PEC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Bad PEC 0x%02x vs. 0x%02x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32f7_i2c_dev*)* @stm32f7_i2c_smbus_check_pec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_smbus_check_pec(%struct.stm32f7_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32f7_i2c_dev*, align 8
  %4 = alloca %struct.stm32f7_i2c_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_dev** %3, align 8
  %8 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %8, i32 0, i32 2
  store %struct.stm32f7_i2c_msg* %9, %struct.stm32f7_i2c_msg** %4, align 8
  %10 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STM32F7_I2C_PECR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl_relaxed(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %4, align 8
  %17 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %43 [
    i32 131, label %19
    i32 130, label %19
    i32 128, label %25
    i32 129, label %25
    i32 133, label %31
    i32 132, label %31
  ]

19:                                               ; preds = %1, %1
  %20 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %4, align 8
  %21 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %50

25:                                               ; preds = %1, %1
  %26 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %4, align 8
  %27 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %50

31:                                               ; preds = %1, %1
  %32 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %4, align 8
  %33 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %4, align 8
  %38 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %45 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %64

50:                                               ; preds = %31, %25, %19
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %56 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i32, i32* @EBADMSG, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %54, %43
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
