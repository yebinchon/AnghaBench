; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.kempld_i2c_data = type { i32, i32, %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }

@KEMPLD_I2C_CTRL = common dso_local global i32 0, align 4
@I2C_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kempld_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.kempld_i2c_data*, align 8
  %4 = alloca %struct.kempld_device_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.kempld_i2c_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.kempld_i2c_data* %7, %struct.kempld_i2c_data** %3, align 8
  %8 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %9 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %8, i32 0, i32 2
  %10 = load %struct.kempld_device_data*, %struct.kempld_device_data** %9, align 8
  store %struct.kempld_device_data* %10, %struct.kempld_device_data** %4, align 8
  %11 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %12 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %11)
  %13 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %14 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %19 = load i32, i32* @KEMPLD_I2C_CTRL, align 4
  %20 = call i32 @kempld_read8(%struct.kempld_device_data* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @I2C_CTRL_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %26 = load i32, i32* @KEMPLD_I2C_CTRL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @kempld_write8(%struct.kempld_device_data* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %31 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %30)
  %32 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %33 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %32, i32 0, i32 0
  %34 = call i32 @i2c_del_adapter(i32* %33)
  ret i32 0
}

declare dso_local %struct.kempld_i2c_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
