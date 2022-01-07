; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_hog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_hog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"requesting hog GPIO %s (chip %s, offset %d) failed, %d\0A\00", align 1
@FLAG_IS_HOGGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"GPIO line %d (%s) hogged as %s%s\0A\00", align 1
@GPIOD_FLAGS_BIT_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@GPIOD_FLAGS_BIT_DIR_VAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"/high\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"/low\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_hog(%struct.gpio_desc* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_chip*, align 8
  %11 = alloca %struct.gpio_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %15 = call %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc* %14)
  store %struct.gpio_chip* %15, %struct.gpio_chip** %10, align 8
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %17 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.gpio_desc* @gpiochip_request_own_desc(%struct.gpio_chip* %18, i32 %19, i8* %20, i64 %21, i32 %22)
  store %struct.gpio_desc* %23, %struct.gpio_desc** %11, align 8
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %25 = call i64 @IS_ERR(%struct.gpio_desc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %29 = call i32 @PTR_ERR(%struct.gpio_desc* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %67

38:                                               ; preds = %4
  %39 = load i32, i32* @FLAG_IS_HOGGED, align 4
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %41 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %44 = call i32 @desc_to_gpio(%struct.gpio_desc* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_OUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_OUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_VAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  br label %64

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %56
  %65 = phi i8* [ %62, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %63 ]
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* %45, i8* %51, i8* %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %27
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc*) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @gpiochip_request_own_desc(%struct.gpio_chip*, i32, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
