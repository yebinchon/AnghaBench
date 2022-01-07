; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devres.c_devm_gpio_request_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devres.c_devm_gpio_request_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@devm_gpio_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_gpio_request_one(%struct.device* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @devm_gpio_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @devres_alloc(i32 %12, i32 4, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @gpio_request_one(i32 %21, i64 %22, i8* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @devres_free(i32* %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @devres_add(%struct.device* %34, i32* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %27, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @gpio_request_one(i32, i64, i8*) #1

declare dso_local i32 @devres_free(i32*) #1

declare dso_local i32 @devres_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
