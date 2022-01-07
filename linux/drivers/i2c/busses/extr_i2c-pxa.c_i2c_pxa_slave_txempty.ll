; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_slave_txempty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_slave_txempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32 }

@ISR_BED = common dso_local global i32 0, align 4
@ICR_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_i2c*, i32)* @i2c_pxa_slave_txempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pxa_slave_txempty(%struct.pxa_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ISR_BED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %12 = call i32 @_IDBR(%struct.pxa_i2c* %11)
  %13 = call i32 @writel(i32 0, i32 %12)
  %14 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %15 = call i32 @_ICR(%struct.pxa_i2c* %14)
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @ICR_TB, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %20 = call i32 @_ICR(%struct.pxa_i2c* %19)
  %21 = call i32 @writel(i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @_IDBR(%struct.pxa_i2c*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
