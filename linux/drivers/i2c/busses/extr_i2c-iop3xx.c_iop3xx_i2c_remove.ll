; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.i2c_adapter = type { i64, i64 }
%struct.i2c_algo_iop3xx_data = type { i64, i64 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@CR_OFFSET = common dso_local global i64 0, align 8
@IOP3XX_ICR_ALD_IE = common dso_local global i64 0, align 8
@IOP3XX_ICR_BERR_IE = common dso_local global i64 0, align 8
@IOP3XX_ICR_RXFULL_IE = common dso_local global i64 0, align 8
@IOP3XX_ICR_TXEMPTY_IE = common dso_local global i64 0, align 8
@IOP3XX_I2C_IO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iop3xx_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.i2c_algo_iop3xx_data* @platform_get_drvdata(%struct.platform_device* %7)
  %9 = bitcast %struct.i2c_algo_iop3xx_data* %8 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %3, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.i2c_algo_iop3xx_data*
  store %struct.i2c_algo_iop3xx_data* %13, %struct.i2c_algo_iop3xx_data** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CR_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @__raw_readl(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @IOP3XX_ICR_ALD_IE, align 8
  %24 = load i64, i64* @IOP3XX_ICR_BERR_IE, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @IOP3XX_ICR_RXFULL_IE, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @IOP3XX_ICR_TXEMPTY_IE, align 8
  %29 = or i64 %27, %28
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CR_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @__raw_writel(i64 %33, i64 %38)
  %40 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @iounmap(i64 %42)
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IOP3XX_I2C_IO_SIZE, align 4
  %48 = call i32 @release_mem_region(i32 %46, i32 %47)
  %49 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %50 = call i32 @kfree(%struct.i2c_algo_iop3xx_data* %49)
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %52 = bitcast %struct.i2c_adapter* %51 to %struct.i2c_algo_iop3xx_data*
  %53 = call i32 @kfree(%struct.i2c_algo_iop3xx_data* %52)
  ret i32 0
}

declare dso_local %struct.i2c_algo_iop3xx_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.i2c_algo_iop3xx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
