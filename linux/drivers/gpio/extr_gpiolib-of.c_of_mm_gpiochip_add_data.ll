; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_mm_gpiochip_add_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_mm_gpiochip_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_mm_gpio_chip = type { i32, %struct.gpio_chip, i32 (%struct.of_mm_gpio_chip*)* }
%struct.gpio_chip = type { i32, i32, %struct.device_node* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%pOF: GPIO chip registration failed with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_mm_gpiochip_add_data(%struct.device_node* %0, %struct.of_mm_gpio_chip* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_mm_gpio_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_chip*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.of_mm_gpio_chip* %1, %struct.of_mm_gpio_chip** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %13 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %12, i32 0, i32 1
  store %struct.gpio_chip* %13, %struct.gpio_chip** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call i32 @kasprintf(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.device_node* %15)
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %69

24:                                               ; preds = %3
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 @of_iomap(%struct.device_node* %25, i32 0)
  %27 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %28 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %30 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %64

34:                                               ; preds = %24
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %38 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %37, i32 0, i32 2
  %39 = load i32 (%struct.of_mm_gpio_chip*)*, i32 (%struct.of_mm_gpio_chip*)** %38, align 8
  %40 = icmp ne i32 (%struct.of_mm_gpio_chip*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %43 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %42, i32 0, i32 2
  %44 = load i32 (%struct.of_mm_gpio_chip*)*, i32 (%struct.of_mm_gpio_chip*)** %43, align 8
  %45 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %46 = call i32 %44(%struct.of_mm_gpio_chip* %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %50 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 2
  store %struct.device_node* %48, %struct.device_node** %51, align 8
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @gpiochip_add_data(%struct.gpio_chip* %52, i8* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %59

58:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %74

59:                                               ; preds = %57
  %60 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %6, align 8
  %61 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @iounmap(i32 %62)
  br label %64

64:                                               ; preds = %59, %33
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %66 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kfree(i32 %67)
  br label %69

69:                                               ; preds = %64, %23
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %58
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @kasprintf(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
