; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_gpiod_set_array_single_value_cansleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_gpiod_set_array_single_value_cansleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_array = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gpio_desc**, %struct.gpio_array*, i32)* @gpiod_set_array_single_value_cansleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiod_set_array_single_value_cansleep(i32 %0, %struct.gpio_desc** %1, %struct.gpio_array* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc**, align 8
  %7 = alloca %struct.gpio_array*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.gpio_desc** %1, %struct.gpio_desc*** %6, align 8
  store %struct.gpio_array* %2, %struct.gpio_array** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64* @bitmap_alloc(i32 %10, i32 %11)
  store i64* %12, i64** %9, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %35

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64*, i64** %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bitmap_fill(i64* %20, i32 %21)
  br label %27

23:                                               ; preds = %16
  %24 = load i64*, i64** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @bitmap_zero(i64* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gpio_desc**, %struct.gpio_desc*** %6, align 8
  %30 = load %struct.gpio_array*, %struct.gpio_array** %7, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @gpiod_set_array_value_cansleep(i32 %28, %struct.gpio_desc** %29, %struct.gpio_array* %30, i64* %31)
  %33 = load i64*, i64** %9, align 8
  %34 = call i32 @kfree(i64* %33)
  br label %35

35:                                               ; preds = %27, %15
  ret void
}

declare dso_local i64* @bitmap_alloc(i32, i32) #1

declare dso_local i32 @bitmap_fill(i64*, i32) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, %struct.gpio_desc**, %struct.gpio_array*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
