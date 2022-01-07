; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_set_transitory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_set_transitory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.gpio_chip* }
%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32, i64)* }

@FLAG_TRANSITORY = common dso_local global i32 0, align 4
@PIN_CONFIG_PERSIST_STATE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Persistence not supported for GPIO %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_set_transitory(%struct.gpio_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %11 = call i32 @VALIDATE_DESC(%struct.gpio_desc* %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @FLAG_TRANSITORY, align 4
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @FLAG_TRANSITORY, align 4
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %22 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %21, i32 0, i32 1
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %26 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %28, align 8
  store %struct.gpio_chip* %29, %struct.gpio_chip** %6, align 8
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 0
  %32 = load i32 (%struct.gpio_chip*, i32, i64)*, i32 (%struct.gpio_chip*, i32, i64)** %31, align 8
  %33 = icmp ne i32 (%struct.gpio_chip*, i32, i64)* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %24
  %36 = load i32, i32* @PIN_CONFIG_PERSIST_STATE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @pinconf_to_config_packed(i32 %36, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %43 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 0
  %46 = load i32 (%struct.gpio_chip*, i32, i64)*, i32 (%struct.gpio_chip*, i32, i64)** %45, align 8
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 %46(%struct.gpio_chip* %47, i32 %48, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ENOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %35
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %57 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 0, i32* %3, align 4
  br label %64

62:                                               ; preds = %35
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %55, %34
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @VALIDATE_DESC(%struct.gpio_desc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
