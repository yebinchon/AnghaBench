; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_reset_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_reset_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32, i32 }

@I2C_MASTER = common dso_local global i32 0, align 4
@I2C_IRQ_MSK_ENABLE = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@REG_CLK_DIV_FS = common dso_local global i32 0, align 4
@REG_CLK_DIV_HS = common dso_local global i32 0, align 4
@I2C_FIFO_MAX = common dso_local global i32 0, align 4
@REG_WRCONF = common dso_local global i32 0, align 4
@REG_RDCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx2967_i2c*)* @zx2967_i2c_reset_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_i2c_reset_hardware(%struct.zx2967_i2c* %0) #0 {
  %2 = alloca %struct.zx2967_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %2, align 8
  %5 = load i32, i32* @I2C_MASTER, align 4
  %6 = load i32, i32* @I2C_IRQ_MSK_ENABLE, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @REG_CMD, align 4
  %11 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %8, i32 %9, i32 %10)
  %12 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %13 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_get_rate(i32 %14)
  %16 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %17 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @REG_CLK_DIV_FS, align 4
  %24 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %21, i32 %22, i32 %23)
  %25 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @REG_CLK_DIV_HS, align 4
  %28 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %25, i32 %26, i32 %27)
  %29 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %30 = load i32, i32* @I2C_FIFO_MAX, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @REG_WRCONF, align 4
  %33 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %29, i32 %31, i32 %32)
  %34 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %35 = load i32, i32* @I2C_FIFO_MAX, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @REG_RDCONF, align 4
  %38 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %34, i32 %36, i32 %37)
  %39 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %40 = load i32, i32* @REG_RDCONF, align 4
  %41 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %39, i32 1, i32 %40)
  %42 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %43 = call i32 @zx2967_i2c_flush_fifos(%struct.zx2967_i2c* %42)
  ret i32 0
}

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @zx2967_i2c_flush_fifos(%struct.zx2967_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
