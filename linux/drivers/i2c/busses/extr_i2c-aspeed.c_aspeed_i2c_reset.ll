; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_i2c_bus = type { i32, i64, i32 }
%struct.platform_device = type { i32 }

@ASPEED_I2C_INTR_CTRL_REG = common dso_local global i64 0, align 8
@ASPEED_I2C_INTR_STS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_i2c_bus*)* @aspeed_i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_reset(%struct.aspeed_i2c_bus* %0) #0 {
  %2 = alloca %struct.aspeed_i2c_bus*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.aspeed_i2c_bus* %0, %struct.aspeed_i2c_bus** %2, align 8
  %6 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %7 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %3, align 8
  %10 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %11 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %15 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ASPEED_I2C_INTR_CTRL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %21 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ASPEED_I2C_INTR_STS_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 -1, i64 %24)
  %26 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @aspeed_i2c_init(%struct.aspeed_i2c_bus* %26, %struct.platform_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %30 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %29, i32 0, i32 0
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @aspeed_i2c_init(%struct.aspeed_i2c_bus*, %struct.platform_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
