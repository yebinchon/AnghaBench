; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { i64 }
%struct.i2c_msg = type { i32 }

@LPI2C_MCR = common dso_local global i64 0, align 8
@MCR_RRF = common dso_local global i32 0, align 4
@MCR_RTF = common dso_local global i32 0, align 4
@LPI2C_MSR = common dso_local global i64 0, align 8
@GEN_START = common dso_local global i32 0, align 4
@LPI2C_MTDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpi2c_imx_struct*, %struct.i2c_msg*)* @lpi2c_imx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpi2c_imx_start(%struct.lpi2c_imx_struct* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.lpi2c_imx_struct*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %6 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %7 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPI2C_MCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MCR_RRF, align 4
  %13 = load i32, i32* @MCR_RTF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %19 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPI2C_MCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %25 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPI2C_MSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 32512, i64 %28)
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %31 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %30)
  %32 = load i32, i32* @GEN_START, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %31, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %37 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPI2C_MTDR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %43 = call i32 @lpi2c_imx_bus_busy(%struct.lpi2c_imx_struct* %42)
  ret i32 %43
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @lpi2c_imx_bus_busy(%struct.lpi2c_imx_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
