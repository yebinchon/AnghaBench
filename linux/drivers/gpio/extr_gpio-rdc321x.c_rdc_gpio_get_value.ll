; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rdc321x_gpio = type { i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @rdc_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdc_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdc321x_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.rdc321x_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.rdc321x_gpio* %9, %struct.rdc321x_gpio** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %14 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %18 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %30 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %32, 32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_write_config_dword(i32 %27, i32 %28, i32 %38)
  %40 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pci_read_config_dword(i32 %42, i32 %43, i32* %6)
  %45 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %5, align 8
  %46 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 31
  %50 = shl i32 1, %49
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  ret i32 %55
}

declare dso_local %struct.rdc321x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
