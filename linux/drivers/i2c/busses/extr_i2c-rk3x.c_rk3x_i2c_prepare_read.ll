; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_prepare_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_prepare_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_CON = common dso_local global i32 0, align 4
@REG_CON_LASTACK = common dso_local global i32 0, align 4
@REG_CON_MOD_MASK = common dso_local global i32 0, align 4
@REG_CON_MOD_RX = common dso_local global i32 0, align 4
@REG_MRXCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*)* @rk3x_i2c_prepare_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_prepare_read(%struct.rk3x_i2c* %0) #0 {
  %2 = alloca %struct.rk3x_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %2, align 8
  %5 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %11 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub i32 %9, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %15 = load i32, i32* @REG_CON, align 4
  %16 = call i32 @i2c_readl(%struct.rk3x_i2c* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ugt i32 %17, 32
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  store i32 32, i32* %3, align 4
  %20 = load i32, i32* @REG_CON_LASTACK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @REG_CON_LASTACK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* @REG_CON_MOD_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @REG_CON_MOD_RX, align 4
  %39 = call i32 @REG_CON_MOD(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %28
  %43 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @REG_CON, align 4
  %46 = call i32 @i2c_writel(%struct.rk3x_i2c* %43, i32 %44, i32 %45)
  %47 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @REG_MRXCNT, align 4
  %50 = call i32 @i2c_writel(%struct.rk3x_i2c* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @REG_CON_MOD(i32) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
