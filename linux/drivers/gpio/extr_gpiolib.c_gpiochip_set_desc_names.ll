; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_set_desc_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_set_desc_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32*, %struct.gpio_device* }
%struct.gpio_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Detected name collision for GPIO name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*)* @gpiochip_set_desc_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiochip_set_desc_names(%struct.gpio_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.gpio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 2
  %9 = load %struct.gpio_device*, %struct.gpio_device** %8, align 8
  store %struct.gpio_device* %9, %struct.gpio_device** %4, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.gpio_desc* @gpio_name_to_desc(i32 %29)
  store %struct.gpio_desc* %30, %struct.gpio_desc** %6, align 8
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %32 = icmp ne %struct.gpio_desc* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.gpio_device*, %struct.gpio_device** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %34, i32 0, i32 1
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %33, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %16

48:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %52 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gpio_device*, %struct.gpio_device** %4, align 8
  %64 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %49

73:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.gpio_desc* @gpio_name_to_desc(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
