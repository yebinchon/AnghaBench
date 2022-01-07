; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc_gpio_set_value_impl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc_gpio_set_value_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rdc321x_gpio = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @rdc_gpio_set_value_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc_gpio_set_value_impl(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdc321x_gpio*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 32
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %8, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = call %struct.rdc321x_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.rdc321x_gpio* %14, %struct.rdc321x_gpio** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 31
  %20 = shl i32 1, %19
  %21 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %22 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %20
  store i32 %28, i32* %26, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 31
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %35 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %29, %17
  %43 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %44 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %50 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %54 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ]
  %58 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %59 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pci_write_config_dword(i32 %45, i32 %57, i32 %64)
  ret void
}

declare dso_local %struct.rdc321x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
