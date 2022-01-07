; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_CON = common dso_local global i32 0, align 4
@REG_CON_TUNING_MASK = common dso_local global i32 0, align 4
@REG_INT_START = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@REG_CON_EN = common dso_local global i32 0, align 4
@REG_CON_START = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@REG_CON_ACTACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*)* @rk3x_i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_start(%struct.rk3x_i2c* %0) #0 {
  %2 = alloca %struct.rk3x_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %2, align 8
  %4 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %5 = load i32, i32* @REG_CON, align 4
  %6 = call i32 @i2c_readl(%struct.rk3x_i2c* %4, i32 %5)
  %7 = load i32, i32* @REG_CON_TUNING_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %10 = load i32, i32* @REG_INT_START, align 4
  %11 = load i32, i32* @REG_IEN, align 4
  %12 = call i32 @i2c_writel(%struct.rk3x_i2c* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @REG_CON_EN, align 4
  %14 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @REG_CON_MOD(i32 %16)
  %18 = or i32 %13, %17
  %19 = load i32, i32* @REG_CON_START, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %24 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @REG_CON_ACTACK, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @REG_CON, align 4
  %39 = call i32 @i2c_writel(%struct.rk3x_i2c* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @REG_CON_MOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
