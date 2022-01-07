; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpiochip_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpiochip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i32, i64 }

@of_gpio_simple_xlate = common dso_local global i64 0, align 8
@MAX_PHANDLE_ARGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_gpiochip_add(%struct.gpio_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %6 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

10:                                               ; preds = %1
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 0
  store i32 2, i32* %17, align 8
  %18 = load i64, i64* @of_gpio_simple_xlate, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAX_PHANDLE_ARGS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %32 = call i32 @of_gpiochip_init_valid_mask(%struct.gpio_chip* %31)
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %34 = call i32 @of_gpiochip_add_pin_range(%struct.gpio_chip* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %69

39:                                               ; preds = %30
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %47 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @of_fwnode_handle(i32 %48)
  %50 = call i32 @devprop_gpiochip_set_names(%struct.gpio_chip* %45, i32 %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @of_node_get(i32 %54)
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %57 = call i32 @of_gpiochip_scan_gpios(%struct.gpio_chip* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %62 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @of_node_put(i32 %63)
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %66 = call i32 @gpiochip_remove_pin_ranges(%struct.gpio_chip* %65)
  br label %67

67:                                               ; preds = %60, %51
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %37, %27, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @of_gpiochip_init_valid_mask(%struct.gpio_chip*) #1

declare dso_local i32 @of_gpiochip_add_pin_range(%struct.gpio_chip*) #1

declare dso_local i32 @devprop_gpiochip_set_names(%struct.gpio_chip*, i32) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @of_gpiochip_scan_gpios(%struct.gpio_chip*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @gpiochip_remove_pin_ranges(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
