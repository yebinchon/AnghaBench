; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_request_own_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_request_own_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get GPIO descriptor\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"setup of own GPIO %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @gpiochip_request_own_desc(%struct.gpio_chip* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpio_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip* %14, i32 %15)
  store %struct.gpio_desc* %16, %struct.gpio_desc** %12, align 8
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %18 = call i64 @IS_ERR(%struct.gpio_desc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %22 = call i32 (%struct.gpio_chip*, i8*, ...) @chip_err(%struct.gpio_chip* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  store %struct.gpio_desc* %23, %struct.gpio_desc** %6, align 8
  br label %51

24:                                               ; preds = %5
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @gpiod_request_commit(%struct.gpio_desc* %25, i8* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.gpio_desc* @ERR_PTR(i32 %31)
  store %struct.gpio_desc* %32, %struct.gpio_desc** %6, align 8
  br label %51

33:                                               ; preds = %24
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @gpiod_configure_flags(%struct.gpio_desc* %34, i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (%struct.gpio_chip*, i8*, ...) @chip_err(%struct.gpio_chip* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %46 = call i32 @gpiod_free_commit(%struct.gpio_desc* %45)
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.gpio_desc* @ERR_PTR(i32 %47)
  store %struct.gpio_desc* %48, %struct.gpio_desc** %6, align 8
  br label %51

49:                                               ; preds = %33
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  store %struct.gpio_desc* %50, %struct.gpio_desc** %6, align 8
  br label %51

51:                                               ; preds = %49, %41, %30, %20
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  ret %struct.gpio_desc* %52
}

declare dso_local %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @chip_err(%struct.gpio_chip*, i8*, ...) #1

declare dso_local i32 @gpiod_request_commit(%struct.gpio_desc*, i8*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @gpiod_configure_flags(%struct.gpio_desc*, i8*, i32, i32) #1

declare dso_local i32 @gpiod_free_commit(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
