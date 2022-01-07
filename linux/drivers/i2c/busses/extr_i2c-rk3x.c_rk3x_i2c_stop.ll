; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i32, i32, i32, i32, i64, i32*, i64 }

@REG_INT_STOP = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@STATE_STOP = common dso_local global i32 0, align 4
@REG_CON = common dso_local global i32 0, align 4
@REG_CON_STOP = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@REG_CON_TUNING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*, i32)* @rk3x_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_stop(%struct.rk3x_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.rk3x_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %9 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %8, i32 0, i32 5
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %14 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %19 = load i32, i32* @REG_INT_STOP, align 4
  %20 = load i32, i32* @REG_IEN, align 4
  %21 = call i32 @i2c_writel(%struct.rk3x_i2c* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @STATE_STOP, align 4
  %23 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %24 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %26 = load i32, i32* @REG_CON, align 4
  %27 = call i32 @i2c_readl(%struct.rk3x_i2c* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @REG_CON_STOP, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REG_CON, align 4
  %34 = call i32 @i2c_writel(%struct.rk3x_i2c* %31, i32 %32, i32 %33)
  br label %53

35:                                               ; preds = %2
  %36 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %37 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @STATE_IDLE, align 4
  %39 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %40 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %42 = load i32, i32* @REG_CON, align 4
  %43 = call i32 @i2c_readl(%struct.rk3x_i2c* %41, i32 %42)
  %44 = load i32, i32* @REG_CON_TUNING_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @REG_CON, align 4
  %49 = call i32 @i2c_writel(%struct.rk3x_i2c* %46, i32 %47, i32 %48)
  %50 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %51 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %50, i32 0, i32 2
  %52 = call i32 @wake_up(i32* %51)
  br label %53

53:                                               ; preds = %35, %17
  ret void
}

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
