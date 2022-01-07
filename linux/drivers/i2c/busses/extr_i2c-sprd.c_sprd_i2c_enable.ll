; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_i2c = type { i64, i32 }

@I2C_DVD_OPT = common dso_local global i32 0, align 4
@I2C_CTL = common dso_local global i64 0, align 8
@I2C_FIFO_FULL_THLD = common dso_local global i32 0, align 4
@I2C_FIFO_EMPTY_THLD = common dso_local global i32 0, align 4
@I2C_EN = common dso_local global i32 0, align 4
@I2C_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_i2c*)* @sprd_i2c_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_i2c_enable(%struct.sprd_i2c* %0) #0 {
  %2 = alloca %struct.sprd_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.sprd_i2c* %0, %struct.sprd_i2c** %2, align 8
  %4 = load i32, i32* @I2C_DVD_OPT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @I2C_CTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %13 = load i32, i32* @I2C_FIFO_FULL_THLD, align 4
  %14 = call i32 @sprd_i2c_set_full_thld(%struct.sprd_i2c* %12, i32 %13)
  %15 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %16 = load i32, i32* @I2C_FIFO_EMPTY_THLD, align 4
  %17 = call i32 @sprd_i2c_set_empty_thld(%struct.sprd_i2c* %15, i32 %16)
  %18 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %19 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sprd_i2c_set_clk(%struct.sprd_i2c* %18, i32 %21)
  %23 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %24 = call i32 @sprd_i2c_reset_fifo(%struct.sprd_i2c* %23)
  %25 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %26 = call i32 @sprd_i2c_clear_irq(%struct.sprd_i2c* %25)
  %27 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %28 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @I2C_CTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @I2C_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @I2C_INT_EN, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.sprd_i2c*, %struct.sprd_i2c** %2, align 8
  %39 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @I2C_CTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sprd_i2c_set_full_thld(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_set_empty_thld(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_set_clk(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_reset_fifo(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_clear_irq(%struct.sprd_i2c*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
