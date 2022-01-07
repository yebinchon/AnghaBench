; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_wait_for_bb_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_wait_for_bb_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@OMAP_I2C_TIMEOUT = common dso_local global i64 0, align 8
@OMAP_I2C_STAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_BB = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_BF = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_REG = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_SCL_I_FUNC = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_SDA_I_FUNC = common dso_local global i32 0, align 4
@OMAP_I2C_BUS_FREE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_i2c_dev*)* @omap_i2c_wait_for_bb_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_wait_for_bb_valid(%struct.omap_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_i2c_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @OMAP_I2C_TIMEOUT, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %14, %69
  %19 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %20 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %21 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OMAP_I2C_STAT_BB, align 4
  %24 = load i32, i32* @OMAP_I2C_STAT_BF, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %71

29:                                               ; preds = %18
  %30 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %31 = load i32, i32* @OMAP_I2C_SYSTEST_REG, align 4
  %32 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @OMAP_I2C_SYSTEST_SCL_I_FUNC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @OMAP_I2C_SYSTEST_SDA_I_FUNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* @OMAP_I2C_BUS_FREE_TIMEOUT, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @time_after(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %71

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %37, %29
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @time_after(i64 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %64 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %68 = call i32 @omap_i2c_recover_bus(%struct.omap_i2c_dev* %67)
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %57
  %70 = call i32 @msleep(i32 1)
  br label %18

71:                                               ; preds = %54, %28
  %72 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %73 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %62, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @omap_i2c_recover_bus(%struct.omap_i2c_dev*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
