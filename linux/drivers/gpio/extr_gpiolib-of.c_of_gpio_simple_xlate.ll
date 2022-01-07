; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpio_simple_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpio_simple_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i64 }
%struct.of_phandle_args = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i64*)* @of_gpio_simple_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_gpio_simple_xlate(%struct.gpio_chip* %0, %struct.of_phandle_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.of_phandle_args*, align 8
  %7 = alloca i64*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i64 @WARN_ON(i32 1)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %60

30:                                               ; preds = %16
  %31 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %60

43:                                               ; preds = %30
  %44 = load i64*, i64** %7, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %48 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %55 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %40, %27, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
