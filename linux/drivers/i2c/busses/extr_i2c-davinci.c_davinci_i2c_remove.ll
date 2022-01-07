; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.davinci_i2c_dev = type { i32, i32 }

@DAVINCI_I2C_MDR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.davinci_i2c_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.davinci_i2c_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.davinci_i2c_dev* %7, %struct.davinci_i2c_dev** %4, align 8
  %8 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %9 = call i32 @i2c_davinci_cpufreq_deregister(%struct.davinci_i2c_dev* %8)
  %10 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %11 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %10, i32 0, i32 1
  %12 = call i32 @i2c_del_adapter(i32* %11)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_get_sync(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_put_noidle(i32* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %25 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %26 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %24, i32 %25, i32 0)
  %27 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_dont_use_autosuspend(i32 %29)
  %31 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %32 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_put_sync(i32 %33)
  %35 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %36 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_disable(i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %23, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.davinci_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @i2c_davinci_cpufreq_deregister(%struct.davinci_i2c_dev*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
