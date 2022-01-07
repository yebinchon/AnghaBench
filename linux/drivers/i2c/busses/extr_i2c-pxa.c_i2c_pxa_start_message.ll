; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_start_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_start_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i32 }

@ICR_STOP = common dso_local global i32 0, align 4
@ICR_ALDIE = common dso_local global i32 0, align 4
@ICR_START = common dso_local global i32 0, align 4
@ICR_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_i2c*)* @i2c_pxa_start_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pxa_start_message(%struct.pxa_i2c* %0) #0 {
  %2 = alloca %struct.pxa_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %2, align 8
  %4 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @i2c_pxa_addr_byte(i32 %6)
  %8 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %9 = call i32 @_IDBR(%struct.pxa_i2c* %8)
  %10 = call i32 @writel(i32 %7, i32 %9)
  %11 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %12 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @i2c_pxa_addr_byte(i32 %13)
  %15 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %18 = call i32 @_ICR(%struct.pxa_i2c* %17)
  %19 = call i32 @readl(i32 %18)
  %20 = load i32, i32* @ICR_STOP, align 4
  %21 = load i32, i32* @ICR_ALDIE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ICR_START, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ICR_TB, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %2, align 8
  %31 = call i32 @_ICR(%struct.pxa_i2c* %30)
  %32 = call i32 @writel(i32 %29, i32 %31)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @i2c_pxa_addr_byte(i32) #1

declare dso_local i32 @_IDBR(%struct.pxa_i2c*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
