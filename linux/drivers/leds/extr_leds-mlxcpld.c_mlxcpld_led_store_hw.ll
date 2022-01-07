; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_store_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_store_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mlxcpld_led = common dso_local global %struct.TYPE_2__* null, align 8
@MLXPLAT_CPLD_LPC_REG_BASE_ADRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mlxcpld_led_store_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxcpld_led_store_hw(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlxcpld_led, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* @MLXPLAT_CPLD_LPC_REG_BASE_ADRR, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mlxcpld_led_bus_access_func(i32 %12, i32 %13, i32 1, i32* %8)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 240
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @MLXPLAT_CPLD_LPC_REG_BASE_ADRR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlxcpld_led_bus_access_func(i32 %29, i32 %30, i32 0, i32* %8)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlxcpld_led, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlxcpld_led_bus_access_func(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
