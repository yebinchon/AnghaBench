; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_read_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_read_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stts751_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@STTS751_REG_CONF = common dso_local global i32 0, align 4
@STTS751_CONF_RES_MASK = common dso_local global i32 0, align 4
@STTS751_CONF_RES_SHIFT = common dso_local global i32 0, align 4
@STTS751_REG_RATE = common dso_local global i32 0, align 4
@stts751_intervals = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unrecognized conversion rate 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@STTS751_REG_HLIM_H = common dso_local global i32 0, align 4
@STTS751_REG_HLIM_L = common dso_local global i32 0, align 4
@STTS751_REG_LLIM_H = common dso_local global i32 0, align 4
@STTS751_REG_LLIM_L = common dso_local global i32 0, align 4
@STTS751_REG_TLIM = common dso_local global i32 0, align 4
@STTS751_REG_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stts751_priv*)* @stts751_read_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_read_chip_config(%struct.stts751_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stts751_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stts751_priv* %0, %struct.stts751_priv** %3, align 8
  %6 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %7 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @STTS751_REG_CONF, align 4
  %10 = call i32 @i2c_smbus_read_byte_data(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @STTS751_CONF_RES_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @STTS751_CONF_RES_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %25 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %27 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STTS751_REG_RATE, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %15
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @stts751_intervals, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %99

48:                                               ; preds = %35
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %51 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %53 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %54 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %53, i32 0, i32 6
  %55 = load i32, i32* @STTS751_REG_HLIM_H, align 4
  %56 = load i32, i32* @STTS751_REG_HLIM_L, align 4
  %57 = call i32 @stts751_read_reg16(%struct.stts751_priv* %52, i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %99

62:                                               ; preds = %48
  %63 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %64 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %65 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %64, i32 0, i32 5
  %66 = load i32, i32* @STTS751_REG_LLIM_H, align 4
  %67 = load i32, i32* @STTS751_REG_LLIM_L, align 4
  %68 = call i32 @stts751_read_reg16(%struct.stts751_priv* %63, i32* %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %99

73:                                               ; preds = %62
  %74 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %75 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %76 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %75, i32 0, i32 3
  %77 = load i32, i32* @STTS751_REG_TLIM, align 4
  %78 = call i32 @stts751_read_reg8(%struct.stts751_priv* %74, i32* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %99

83:                                               ; preds = %73
  %84 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %85 = load i32, i32* @STTS751_REG_HYST, align 4
  %86 = call i32 @stts751_read_reg8(%struct.stts751_priv* %84, i32* %5, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %99

91:                                               ; preds = %83
  %92 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %93 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %98 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %91, %89, %81, %71, %60, %40, %33, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @stts751_read_reg16(%struct.stts751_priv*, i32*, i32, i32) #1

declare dso_local i32 @stts751_read_reg8(%struct.stts751_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
