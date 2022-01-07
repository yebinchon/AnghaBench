; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc_gpio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rdc321x.c_rdc_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rdc321x_gpio = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @rdc_gpio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdc_gpio_config(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdc321x_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.rdc321x_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.rdc321x_gpio* %11, %struct.rdc321x_gpio** %7, align 8
  %12 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %16 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 32
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %22 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %26 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  %30 = call i32 @pci_read_config_dword(i32 %17, i32 %29, i32* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %65

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 31
  %37 = shl i32 1, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %41 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ult i32 %43, 32
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %47 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %34
  %50 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %51 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pci_write_config_dword(i32 %42, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rdc_gpio_set_value_impl(%struct.gpio_chip* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %59, %33
  %66 = load %struct.rdc321x_gpio*, %struct.rdc321x_gpio** %7, align 8
  %67 = getelementptr inbounds %struct.rdc321x_gpio, %struct.rdc321x_gpio* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.rdc321x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @rdc_gpio_set_value_impl(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
