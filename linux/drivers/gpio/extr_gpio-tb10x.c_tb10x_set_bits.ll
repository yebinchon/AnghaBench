; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tb10x.c_tb10x_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb10x_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb10x_gpio*, i32, i32, i32)* @tb10x_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb10x_set_bits(%struct.tb10x_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tb10x_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.tb10x_gpio* %0, %struct.tb10x_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %5, align 8
  %12 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @tb10x_reg_read(%struct.tb10x_gpio* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @tb10x_reg_write(%struct.tb10x_gpio* %27, i32 %28, i32 %29)
  %31 = load %struct.tb10x_gpio*, %struct.tb10x_gpio** %5, align 8
  %32 = getelementptr inbounds %struct.tb10x_gpio, %struct.tb10x_gpio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tb10x_reg_read(%struct.tb10x_gpio*, i32) #1

declare dso_local i32 @tb10x_reg_write(%struct.tb10x_gpio*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
