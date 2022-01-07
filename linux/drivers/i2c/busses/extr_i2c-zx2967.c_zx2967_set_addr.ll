; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32 }

@I2C_ADDR_LOW_SHIFT = common dso_local global i32 0, align 4
@I2C_ADDR_LOW_MASK = common dso_local global i32 0, align 4
@REG_DEVADDR_L = common dso_local global i32 0, align 4
@I2C_ADDR_HI_SHIFT = common dso_local global i32 0, align 4
@I2C_ADDR_HI_MASK = common dso_local global i32 0, align 4
@REG_DEVADDR_H = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@I2C_ADDR_MODE_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx2967_i2c*, i32)* @zx2967_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx2967_set_addr(%struct.zx2967_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.zx2967_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @I2C_ADDR_LOW_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @I2C_ADDR_LOW_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @REG_DEVADDR_L, align 4
  %14 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @I2C_ADDR_HI_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @I2C_ADDR_HI_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REG_DEVADDR_H, align 4
  %23 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %28 = load i32, i32* @REG_CMD, align 4
  %29 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %27, i32 %28)
  %30 = load i32, i32* @I2C_ADDR_MODE_TEN, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %34 = load i32, i32* @REG_CMD, align 4
  %35 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %33, i32 %34)
  %36 = load i32, i32* @I2C_ADDR_MODE_TEN, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @REG_CMD, align 4
  %43 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i32, i32) #1

declare dso_local i32 @zx2967_i2c_readl(%struct.zx2967_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
