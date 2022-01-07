; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_handle_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_handle_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3x_i2c = type { i32, i32, i32, i32 }

@REG_INT_STOP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected irq in STOP: 0x%x\0A\00", align 1
@REG_IPD = common dso_local global i32 0, align 4
@REG_CON = common dso_local global i32 0, align 4
@REG_CON_STOP = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3x_i2c*, i32)* @rk3x_i2c_handle_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3x_i2c_handle_stop(%struct.rk3x_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.rk3x_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rk3x_i2c* %0, %struct.rk3x_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @REG_INT_STOP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @rk3x_i2c_stop(%struct.rk3x_i2c* %11, i32 %13)
  %15 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %16 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %21 = call i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c* %20)
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %24 = load i32, i32* @REG_INT_STOP, align 4
  %25 = load i32, i32* @REG_IPD, align 4
  %26 = call i32 @i2c_writel(%struct.rk3x_i2c* %23, i32 %24, i32 %25)
  %27 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %28 = load i32, i32* @REG_CON, align 4
  %29 = call i32 @i2c_readl(%struct.rk3x_i2c* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @REG_CON_STOP, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @REG_CON, align 4
  %37 = call i32 @i2c_writel(%struct.rk3x_i2c* %34, i32 %35, i32 %36)
  %38 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %39 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @STATE_IDLE, align 4
  %41 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %3, align 8
  %44 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %43, i32 0, i32 1
  %45 = call i32 @wake_up(i32* %44)
  br label %46

46:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @rk3x_i2c_stop(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rk3x_i2c_clean_ipd(%struct.rk3x_i2c*) #1

declare dso_local i32 @i2c_writel(%struct.rk3x_i2c*, i32, i32) #1

declare dso_local i32 @i2c_readl(%struct.rk3x_i2c*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
