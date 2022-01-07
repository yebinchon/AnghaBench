; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { %struct.gpio_device* }
%struct.gpio_device = type { i32, i32, i32, %struct.gpio_desc*, i32*, i32* }
%struct.gpio_desc = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@FLAG_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"REMOVING GPIOCHIP WITH GPIOS STILL REQUESTED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpiochip_remove(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.gpio_device*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load %struct.gpio_device*, %struct.gpio_device** %9, align 8
  store %struct.gpio_device* %10, %struct.gpio_device** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %12 = call i32 @gpiochip_sysfs_unregister(%struct.gpio_device* %11)
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %14 = call i32 @gpiochip_free_hogs(%struct.gpio_chip* %13)
  %15 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %15, i32 0, i32 5
  store i32* null, i32** %16, align 8
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %18 = call i32 @gpiochip_irqchip_remove(%struct.gpio_chip* %17)
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %20 = call i32 @acpi_gpiochip_remove(%struct.gpio_chip* %19)
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %22 = call i32 @gpiochip_remove_pin_ranges(%struct.gpio_chip* %21)
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %24 = call i32 @of_gpiochip_remove(%struct.gpio_chip* %23)
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %26 = call i32 @gpiochip_free_valid_mask(%struct.gpio_chip* %25)
  %27 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %28 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %1
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %34 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %39 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %38, i32 0, i32 3
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %40, i64 %42
  store %struct.gpio_desc* %43, %struct.gpio_desc** %4, align 8
  %44 = load i32, i32* @FLAG_REQUESTED, align 4
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %46 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %61 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %60, i32 0, i32 1
  %62 = call i32 @dev_crit(i32* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %65 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %64, i32 0, i32 2
  %66 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %67 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %66, i32 0, i32 1
  %68 = call i32 @cdev_device_del(i32* %65, i32* %67)
  %69 = load %struct.gpio_device*, %struct.gpio_device** %3, align 8
  %70 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %69, i32 0, i32 1
  %71 = call i32 @put_device(i32* %70)
  ret void
}

declare dso_local i32 @gpiochip_sysfs_unregister(%struct.gpio_device*) #1

declare dso_local i32 @gpiochip_free_hogs(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_irqchip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @acpi_gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_remove_pin_ranges(%struct.gpio_chip*) #1

declare dso_local i32 @of_gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @gpiochip_free_valid_mask(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

declare dso_local i32 @cdev_device_del(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
