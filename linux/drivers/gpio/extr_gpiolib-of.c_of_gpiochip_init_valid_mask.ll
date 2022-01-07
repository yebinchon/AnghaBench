; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpiochip_init_valid_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpiochip_init_valid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64, i32, %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"gpio-reserved-ranges\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*)* @of_gpiochip_init_valid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_gpiochip_init_valid_mask(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 2
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %7, align 8
  %12 = call i32 @of_property_count_u32_elems(%struct.device_node* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = srem i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %1
  br label %57

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @of_property_read_u32_index(%struct.device_node* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i64* %5)
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @of_property_read_u32_index(%struct.device_node* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31, i64* %6)
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %25
  br label %54

47:                                               ; preds = %38
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @bitmap_clear(i32 %50, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %4, align 4
  br label %21

57:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

declare dso_local i32 @bitmap_clear(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
