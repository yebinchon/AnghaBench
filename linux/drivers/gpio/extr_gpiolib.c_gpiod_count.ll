; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@CONFIG_ACPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_count(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @CONFIG_OF, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @of_gpio_get_count(%struct.device* %20, i8* %21)
  store i32 %22, i32* %5, align 4
  br label %39

23:                                               ; preds = %14, %11, %2
  %24 = load i32, i32* @CONFIG_ACPI, align 4
  %25 = call i64 @IS_ENABLED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i64 @ACPI_HANDLE(%struct.device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @acpi_gpio_count(%struct.device* %35, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %30, %27, %23
  br label %39

39:                                               ; preds = %38, %19
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @platform_gpio_count(%struct.device* %43, i8* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_gpio_get_count(%struct.device*, i8*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_gpio_count(%struct.device*, i8*) #1

declare dso_local i32 @platform_gpio_count(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
