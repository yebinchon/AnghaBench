; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_i2c_struct = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"adapter removed\0A\00", align 1
@IMX_I2C_IADR = common dso_local global i32 0, align 4
@IMX_I2C_IFDR = common dso_local global i32 0, align 4
@IMX_I2C_I2CR = common dso_local global i32 0, align 4
@IMX_I2C_I2SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_imx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_imx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_i2c_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.imx_i2c_struct* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.imx_i2c_struct* %7, %struct.imx_i2c_struct** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @pm_runtime_get_sync(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %17 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %21 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %20, i32 0, i32 3
  %22 = call i32 @i2c_del_adapter(%struct.TYPE_2__* %21)
  %23 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %24 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %29 = call i32 @i2c_imx_dma_free(%struct.imx_i2c_struct* %28)
  br label %30

30:                                               ; preds = %27, %15
  %31 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %32 = load i32, i32* @IMX_I2C_IADR, align 4
  %33 = call i32 @imx_i2c_write_reg(i32 0, %struct.imx_i2c_struct* %31, i32 %32)
  %34 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %35 = load i32, i32* @IMX_I2C_IFDR, align 4
  %36 = call i32 @imx_i2c_write_reg(i32 0, %struct.imx_i2c_struct* %34, i32 %35)
  %37 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %38 = load i32, i32* @IMX_I2C_I2CR, align 4
  %39 = call i32 @imx_i2c_write_reg(i32 0, %struct.imx_i2c_struct* %37, i32 %38)
  %40 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %41 = load i32, i32* @IMX_I2C_I2SR, align 4
  %42 = call i32 @imx_i2c_write_reg(i32 0, %struct.imx_i2c_struct* %40, i32 %41)
  %43 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %44 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %47 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %46, i32 0, i32 1
  %48 = call i32 @clk_notifier_unregister(i32 %45, i32* %47)
  %49 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %50 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @pm_runtime_put_noidle(i32* %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @pm_runtime_disable(i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %30, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.imx_i2c_struct* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_imx_dma_free(%struct.imx_i2c_struct*) #1

declare dso_local i32 @imx_i2c_write_reg(i32, %struct.imx_i2c_struct*, i32) #1

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
