; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_send_mastercode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_send_mastercode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i32, i32, i32 }

@ICR_STOP = common dso_local global i32 0, align 4
@ICR_ALDIE = common dso_local global i32 0, align 4
@ICR_GPIOEN = common dso_local global i32 0, align 4
@ICR_START = common dso_local global i32 0, align 4
@ICR_TB = common dso_local global i32 0, align 4
@ICR_ITEIE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@I2C_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_i2c*)* @i2c_pxa_send_mastercode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_send_mastercode(%struct.pxa_i2c* %0) #0 {
  %2 = alloca %struct.pxa_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %2, align 8
  %5 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %9 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %11 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %14 = call i32 @_IDBR(%struct.pxa_i2c* %13)
  %15 = call i32 @writel(i32 %12, i32 %14)
  %16 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %17 = call i32 @_ICR(%struct.pxa_i2c* %16)
  %18 = call i32 @readl(i32 %17)
  %19 = load i32, i32* @ICR_STOP, align 4
  %20 = load i32, i32* @ICR_ALDIE, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @ICR_GPIOEN, align 4
  %25 = load i32, i32* @ICR_START, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ICR_TB, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ICR_ITEIE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %35 = call i32 @_ICR(%struct.pxa_i2c* %34)
  %36 = call i32 @writel(i32 %33, i32 %35)
  %37 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %37, i32 0, i32 3
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %41 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %44 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 %48, 1
  %50 = call i64 @wait_event_timeout(i32 %42, i32 %47, i32 %49)
  store i64 %50, i64* %4, align 8
  %51 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %52 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* %4, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* @I2C_RETRY, align 4
  br label %58

57:                                               ; preds = %1
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  ret i32 %59
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @_IDBR(%struct.pxa_i2c*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
