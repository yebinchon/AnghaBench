; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_i2c_data = type { %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KEMPLD_I2C_CTRL = common dso_local global i32 0, align 4
@I2C_CTRL_EN = common dso_local global i32 0, align 4
@I2C_CTRL_IEN = common dso_local global i32 0, align 4
@bus_frequency = common dso_local global i32 0, align 4
@KEMPLD_I2C_FREQ_MAX = common dso_local global i32 0, align 4
@KEMPLD_I2C_PRELOW = common dso_local global i32 0, align 4
@KEMPLD_I2C_PREHIGH = common dso_local global i32 0, align 4
@KEMPLD_CFG = common dso_local global i32 0, align 4
@i2c_gpio_mux = common dso_local global i64 0, align 8
@KEMPLD_CFG_GPIO_I2C_MUX = common dso_local global i32 0, align 4
@KEMPLD_I2C_CMD = common dso_local global i32 0, align 4
@I2C_CMD_IACK = common dso_local global i32 0, align 4
@KEMPLD_I2C_STAT = common dso_local global i32 0, align 4
@I2C_STAT_BUSY = common dso_local global i32 0, align 4
@I2C_CMD_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kempld_i2c_data*)* @kempld_i2c_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kempld_i2c_device_init(%struct.kempld_i2c_data* %0) #0 {
  %2 = alloca %struct.kempld_i2c_data*, align 8
  %3 = alloca %struct.kempld_device_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kempld_i2c_data* %0, %struct.kempld_i2c_data** %2, align 8
  %9 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %2, align 8
  %10 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %9, i32 0, i32 0
  %11 = load %struct.kempld_device_data*, %struct.kempld_device_data** %10, align 8
  store %struct.kempld_device_data* %11, %struct.kempld_device_data** %3, align 8
  %12 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %13 = load i32, i32* @KEMPLD_I2C_CTRL, align 4
  %14 = call i32 @kempld_read8(%struct.kempld_device_data* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @I2C_CTRL_EN, align 4
  %16 = load i32, i32* @I2C_CTRL_IEN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %22 = load i32, i32* @KEMPLD_I2C_CTRL, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @kempld_write8(%struct.kempld_device_data* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @bus_frequency, align 4
  %26 = load i32, i32* @KEMPLD_I2C_FREQ_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @KEMPLD_I2C_FREQ_MAX, align 4
  store i32 %29, i32* @bus_frequency, align 4
  br label %30

30:                                               ; preds = %28, %1
  %31 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %32 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %38 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @bus_frequency, align 4
  %41 = mul nsw i32 %40, 5
  %42 = sdiv i32 %39, %41
  %43 = sub nsw i32 %42, 1000
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %5, align 8
  br label %54

45:                                               ; preds = %30
  %46 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %47 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @bus_frequency, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sdiv i32 %48, %50
  %52 = sub nsw i32 %51, 3000
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %45, %36
  %55 = load i64, i64* %5, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i64, i64* %5, align 8
  %60 = sdiv i64 %59, 1000
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i64, i64* %5, align 8
  %63 = srem i64 %62, 1000
  %64 = icmp sge i64 %63, 500
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %70 = load i32, i32* @KEMPLD_I2C_PRELOW, align 4
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 255
  %73 = call i32 @kempld_write8(%struct.kempld_device_data* %69, i32 %70, i32 %72)
  %74 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %75 = load i32, i32* @KEMPLD_I2C_PREHIGH, align 4
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 8
  %78 = call i32 @kempld_write8(%struct.kempld_device_data* %74, i32 %75, i32 %77)
  %79 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %80 = load i32, i32* @KEMPLD_CFG, align 4
  %81 = call i32 @kempld_read8(%struct.kempld_device_data* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i64, i64* @i2c_gpio_mux, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load i32, i32* @KEMPLD_CFG_GPIO_I2C_MUX, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %93

88:                                               ; preds = %68
  %89 = load i32, i32* @KEMPLD_CFG_GPIO_I2C_MUX, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %95 = load i32, i32* @KEMPLD_CFG, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @kempld_write8(%struct.kempld_device_data* %94, i32 %95, i32 %96)
  %98 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %99 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %100 = load i32, i32* @I2C_CMD_IACK, align 4
  %101 = call i32 @kempld_write8(%struct.kempld_device_data* %98, i32 %99, i32 %100)
  %102 = load i32, i32* @I2C_CTRL_EN, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %106 = load i32, i32* @KEMPLD_I2C_CTRL, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @kempld_write8(%struct.kempld_device_data* %105, i32 %106, i32 %107)
  %109 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %110 = load i32, i32* @KEMPLD_I2C_STAT, align 4
  %111 = call i32 @kempld_read8(%struct.kempld_device_data* %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @I2C_STAT_BUSY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %93
  %117 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %118 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %119 = load i32, i32* @I2C_CMD_STOP, align 4
  %120 = call i32 @kempld_write8(%struct.kempld_device_data* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %93
  ret void
}

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
