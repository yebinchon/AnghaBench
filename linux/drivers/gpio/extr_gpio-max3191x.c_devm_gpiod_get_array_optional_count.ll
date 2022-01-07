; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_devm_gpiod_get_array_optional_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_devm_gpiod_get_array_optional_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_descs = type { i32 }
%struct.device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ignoring %s-gpios: found %d, expected %u or 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get %s-gpios: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_descs* (%struct.device*, i8*, i32, i32)* @devm_gpiod_get_array_optional_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_descs* @devm_gpiod_get_array_optional_count(%struct.device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio_descs*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_descs*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @gpiod_count(%struct.device* %12, i8* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.gpio_descs* null, %struct.gpio_descs** %5, align 8
  br label %49

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30, i32 %31)
  store %struct.gpio_descs* null, %struct.gpio_descs** %5, align 8
  br label %49

33:                                               ; preds = %24, %20
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.gpio_descs* @devm_gpiod_get_array_optional(%struct.device* %34, i8* %35, i32 %36)
  store %struct.gpio_descs* %37, %struct.gpio_descs** %10, align 8
  %38 = load %struct.gpio_descs*, %struct.gpio_descs** %10, align 8
  %39 = call i64 @IS_ERR(%struct.gpio_descs* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.gpio_descs*, %struct.gpio_descs** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.gpio_descs* %44)
  %46 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  store %struct.gpio_descs* null, %struct.gpio_descs** %5, align 8
  br label %49

47:                                               ; preds = %33
  %48 = load %struct.gpio_descs*, %struct.gpio_descs** %10, align 8
  store %struct.gpio_descs* %48, %struct.gpio_descs** %5, align 8
  br label %49

49:                                               ; preds = %47, %41, %27, %19
  %50 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  ret %struct.gpio_descs* %50
}

declare dso_local i32 @gpiod_count(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, ...) #1

declare dso_local %struct.gpio_descs* @devm_gpiod_get_array_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_descs*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_descs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
