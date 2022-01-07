; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-f7188x.c_f7188x_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-f7188x.c_f7188x_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.f7188x_gpio_bank = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.f7188x_sio* }
%struct.f7188x_sio = type { i32 }

@SIO_LD_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @f7188x_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f7188x_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f7188x_gpio_bank*, align 8
  %8 = alloca %struct.f7188x_sio*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.f7188x_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.f7188x_gpio_bank* %11, %struct.f7188x_gpio_bank** %7, align 8
  %12 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %7, align 8
  %13 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.f7188x_sio*, %struct.f7188x_sio** %15, align 8
  store %struct.f7188x_sio* %16, %struct.f7188x_sio** %8, align 8
  %17 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %18 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @superio_enter(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %27 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SIO_LD_GPIO, align 4
  %30 = call i32 @superio_select(i32 %28, i32 %29)
  %31 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %32 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %7, align 8
  %35 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gpio_dir(i32 %36)
  %38 = call i32 @superio_inb(i32 %33, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %40 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @superio_exit(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %25, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.f7188x_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @gpio_dir(i32) #1

declare dso_local i32 @superio_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
