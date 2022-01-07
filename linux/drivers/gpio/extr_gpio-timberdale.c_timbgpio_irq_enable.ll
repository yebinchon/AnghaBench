; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-timberdale.c_timbgpio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-timberdale.c_timbgpio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.timbgpio = type { i32, i64, i32, i64 }

@TGPIO_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @timbgpio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timbgpio_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.timbgpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.timbgpio* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.timbgpio* %7, %struct.timbgpio** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.timbgpio*, %struct.timbgpio** %3, align 8
  %12 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.timbgpio*, %struct.timbgpio** %3, align 8
  %16 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = load %struct.timbgpio*, %struct.timbgpio** %3, align 8
  %23 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = or i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.timbgpio*, %struct.timbgpio** %3, align 8
  %27 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.timbgpio*, %struct.timbgpio** %3, align 8
  %30 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TGPIO_IER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i64 %28, i64 %33)
  %35 = load %struct.timbgpio*, %struct.timbgpio** %3, align 8
  %36 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.timbgpio* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
