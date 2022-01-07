; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_remove_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_remove_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.aspeed_i2c_bus = type { i32, i32, i32, i64 }

@ASPEED_I2C_FUN_CTRL_REG = common dso_local global i64 0, align 8
@ASPEED_I2C_INTR_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_i2c_remove_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_remove_bus(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.aspeed_i2c_bus*, align 8
  %4 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.aspeed_i2c_bus* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.aspeed_i2c_bus* %6, %struct.aspeed_i2c_bus** %3, align 8
  %7 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %8 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %7, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %12 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ASPEED_I2C_FUN_CTRL_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %18 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ASPEED_I2C_INTR_CTRL_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %24 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %23, i32 0, i32 2
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %28 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @reset_control_assert(i32 %29)
  %31 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %3, align 8
  %32 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %31, i32 0, i32 0
  %33 = call i32 @i2c_del_adapter(i32* %32)
  ret i32 0
}

declare dso_local %struct.aspeed_i2c_bus* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
