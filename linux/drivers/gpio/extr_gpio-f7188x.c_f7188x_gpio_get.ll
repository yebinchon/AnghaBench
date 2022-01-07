; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-f7188x.c_f7188x_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-f7188x.c_f7188x_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.f7188x_gpio_bank = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.f7188x_sio* }
%struct.f7188x_sio = type { i32 }

@SIO_LD_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @f7188x_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f7188x_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f7188x_gpio_bank*, align 8
  %8 = alloca %struct.f7188x_sio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.f7188x_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.f7188x_gpio_bank* %12, %struct.f7188x_gpio_bank** %7, align 8
  %13 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %7, align 8
  %14 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.f7188x_sio*, %struct.f7188x_sio** %16, align 8
  store %struct.f7188x_sio* %17, %struct.f7188x_sio** %8, align 8
  %18 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %19 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @superio_enter(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %2
  %27 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %28 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SIO_LD_GPIO, align 4
  %31 = call i32 @superio_select(i32 %29, i32 %30)
  %32 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %33 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %7, align 8
  %36 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpio_dir(i32 %37)
  %39 = call i32 @superio_inb(i32 %34, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %26
  %51 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %52 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %7, align 8
  %55 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @gpio_data_out(i32 %56)
  %58 = call i32 @superio_inb(i32 %53, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %68

59:                                               ; preds = %26
  %60 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %61 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %7, align 8
  %64 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @gpio_data_in(i32 %65)
  %67 = call i32 @superio_inb(i32 %62, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %59, %50
  %69 = load %struct.f7188x_sio*, %struct.f7188x_sio** %8, align 8
  %70 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @superio_exit(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %68, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.f7188x_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @gpio_dir(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gpio_data_out(i32) #1

declare dso_local i32 @gpio_data_in(i32) #1

declare dso_local i32 @superio_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
