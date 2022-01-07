; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_bus_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_bus_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32 }

@LOOP_TIMEOUT = common dso_local global i32 0, align 4
@ICMCR = common dso_local global i32 0, align 4
@FSDA = common dso_local global i32 0, align 4
@MDBS = common dso_local global i32 0, align 4
@OBPC = common dso_local global i32 0, align 4
@FSCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_i2c_priv*)* @rcar_i2c_bus_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_i2c_bus_barrier(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_i2c_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LOOP_TIMEOUT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %11 = load i32, i32* @ICMCR, align 4
  %12 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %10, i32 %11)
  %13 = load i32, i32* @FSDA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %35

17:                                               ; preds = %9
  %18 = call i32 @udelay(i32 1)
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* @MDBS, align 4
  %24 = load i32, i32* @OBPC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FSDA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FSCL, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %32, i32 0, i32 1
  %34 = call i32 @i2c_recover_bus(i32* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @rcar_i2c_read(%struct.rcar_i2c_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_recover_bus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
