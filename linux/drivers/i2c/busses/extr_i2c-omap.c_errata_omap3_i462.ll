; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_errata_omap3_i462.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_errata_omap3_i462.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32, i32 }

@OMAP_I2C_STAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_XUDF = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_NACK = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_AL = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_XRDY = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_XDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Arbitration lost\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"timeout waiting on XUDF bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_i2c_dev*)* @errata_omap3_i462 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @errata_omap3_i462(%struct.omap_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_i2c_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %3, align 8
  store i64 10000, i64* %4, align 8
  br label %6

6:                                                ; preds = %64, %1
  %7 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %8 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %9 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @OMAP_I2C_STAT_XUDF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %68

15:                                               ; preds = %6
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %18 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %15
  %23 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %24 = load i32, i32* @OMAP_I2C_STAT_XRDY, align 4
  %25 = load i32, i32* @OMAP_I2C_STAT_XDR, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %23, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %34 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %35 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %39 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %40 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %22
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %48 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %52 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %53 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %57 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %58 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %56, i32 %57)
  br label %59

59:                                               ; preds = %46, %41
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %77

62:                                               ; preds = %15
  %63 = call i32 (...) @cpu_relax()
  br label %64

64:                                               ; preds = %62
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %6, label %68

68:                                               ; preds = %64, %14
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %73 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

76:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %71, %59
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
