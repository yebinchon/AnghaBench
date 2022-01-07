; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_start_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_start_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i64 }

@REG_STAT = common dso_local global i32 0, align 4
@I2C_IRQ_ACK_CLEAR = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@I2C_RW_READ = common dso_local global i32 0, align 4
@I2C_CMB_RW_EN = common dso_local global i32 0, align 4
@I2C_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx2967_i2c*)* @zx2967_i2c_start_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx2967_i2c_start_ctrl(%struct.zx2967_i2c* %0) #0 {
  %2 = alloca %struct.zx2967_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %2, align 8
  %5 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %6 = load i32, i32* @REG_STAT, align 4
  %7 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @I2C_IRQ_ACK_CLEAR, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @REG_STAT, align 4
  %14 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %11, i32 %12, i32 %13)
  %15 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %16 = load i32, i32* @REG_CMD, align 4
  %17 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %19 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @I2C_RW_READ, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @I2C_RW_READ, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* @I2C_CMB_RW_EN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @I2C_START, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @REG_CMD, align 4
  %42 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @zx2967_i2c_readl(%struct.zx2967_i2c*, i32) #1

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
