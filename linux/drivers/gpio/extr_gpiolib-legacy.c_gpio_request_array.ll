; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-legacy.c_gpio_request_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-legacy.c_gpio_request_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_request_array(%struct.gpio* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio* %0, %struct.gpio** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.gpio*, %struct.gpio** %4, align 8
  %15 = getelementptr inbounds %struct.gpio, %struct.gpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gpio*, %struct.gpio** %4, align 8
  %18 = getelementptr inbounds %struct.gpio, %struct.gpio* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gpio*, %struct.gpio** %4, align 8
  %21 = getelementptr inbounds %struct.gpio, %struct.gpio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpio_request_one(i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %34

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load %struct.gpio*, %struct.gpio** %4, align 8
  %32 = getelementptr inbounds %struct.gpio, %struct.gpio* %31, i32 1
  store %struct.gpio* %32, %struct.gpio** %4, align 8
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %47

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.gpio*, %struct.gpio** %4, align 8
  %41 = getelementptr inbounds %struct.gpio, %struct.gpio* %40, i32 -1
  store %struct.gpio* %41, %struct.gpio** %4, align 8
  %42 = getelementptr inbounds %struct.gpio, %struct.gpio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gpio_free(i32 %43)
  br label %35

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @gpio_request_one(i32, i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
