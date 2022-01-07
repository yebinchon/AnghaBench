; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_i2c_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IMX_I2C_I2SR = common dso_local global i32 0, align 4
@I2SR_IIF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i2c_imx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_imx_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.imx_i2c_struct*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.imx_i2c_struct*
  store %struct.imx_i2c_struct* %9, %struct.imx_i2c_struct** %6, align 8
  %10 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %6, align 8
  %11 = load i32, i32* @IMX_I2C_I2SR, align 4
  %12 = call i32 @imx_i2c_read_reg(%struct.imx_i2c_struct* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @I2SR_IIF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %6, align 8
  %20 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @I2SR_IIF, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %6, align 8
  %26 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2SR_IIF, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %6, align 8
  %36 = load i32, i32* @IMX_I2C_I2SR, align 4
  %37 = call i32 @imx_i2c_write_reg(i32 %34, %struct.imx_i2c_struct* %35, i32 %36)
  %38 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %6, align 8
  %39 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %38, i32 0, i32 1
  %40 = call i32 @wake_up(i32* %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @imx_i2c_read_reg(%struct.imx_i2c_struct*, i32) #1

declare dso_local i32 @imx_i2c_write_reg(i32, %struct.imx_i2c_struct*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
