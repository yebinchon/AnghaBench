; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_set_value_nocheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_set_value_nocheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }

@FLAG_ACTIVE_LOW = common dso_local global i32 0, align 4
@FLAG_OPEN_DRAIN = common dso_local global i32 0, align 4
@FLAG_OPEN_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_desc*, i32)* @gpiod_set_value_nocheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiod_set_value_nocheck(%struct.gpio_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @FLAG_OPEN_DRAIN, align 4
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @gpio_set_open_drain_value_commit(%struct.gpio_desc* %22, i32 %23)
  br label %40

25:                                               ; preds = %15
  %26 = load i32, i32* @FLAG_OPEN_SOURCE, align 4
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %28 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @gpio_set_open_source_value_commit(%struct.gpio_desc* %32, i32 %33)
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @gpiod_set_raw_value_commit(%struct.gpio_desc* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %21
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gpio_set_open_drain_value_commit(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpio_set_open_source_value_commit(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_set_raw_value_commit(%struct.gpio_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
