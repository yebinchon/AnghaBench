; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.ioh_gpio* }
%struct.ioh_gpio = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ioh_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioh_irq_disable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.ioh_gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %3, align 8
  %9 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %10 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %9, i32 0, i32 0
  %11 = load %struct.ioh_gpio*, %struct.ioh_gpio** %10, align 8
  store %struct.ioh_gpio* %11, %struct.ioh_gpio** %4, align 8
  %12 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %13 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %12, i32 0, i32 2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %17 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %22 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @ioread32(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %31 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %40 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %45 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @iowrite32(i32 %38, i32* %48)
  %50 = load %struct.ioh_gpio*, %struct.ioh_gpio** %4, align 8
  %51 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %50, i32 0, i32 2
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
