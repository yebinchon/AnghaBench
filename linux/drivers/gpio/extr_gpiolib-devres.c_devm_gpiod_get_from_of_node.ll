; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devres.c_devm_gpiod_get_from_of_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-devres.c_devm_gpiod_get_from_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.devres = type { i32 }

@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@devm_gpiod_release = common dso_local global i32 0, align 4
@devm_gpiod_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @devm_gpiod_get_from_of_node(%struct.device* %0, %struct.device_node* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gpio_desc**, align 8
  %15 = alloca %struct.gpio_desc*, align 8
  %16 = alloca %struct.devres*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load %struct.device_node*, %struct.device_node** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = call %struct.gpio_desc* @gpiod_get_from_of_node(%struct.device_node* %17, i8* %18, i32 %19, i32 %20, i8* %21)
  store %struct.gpio_desc* %22, %struct.gpio_desc** %15, align 8
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  %24 = call i64 @IS_ERR(%struct.gpio_desc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  store %struct.gpio_desc* %27, %struct.gpio_desc** %7, align 8
  br label %62

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load i32, i32* @devm_gpiod_release, align 4
  %36 = load i32, i32* @devm_gpiod_match, align 4
  %37 = call %struct.devres* @devres_find(%struct.device* %34, i32 %35, i32 %36, %struct.gpio_desc** %15)
  store %struct.devres* %37, %struct.devres** %16, align 8
  %38 = load %struct.devres*, %struct.devres** %16, align 8
  %39 = icmp ne %struct.devres* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  store %struct.gpio_desc* %41, %struct.gpio_desc** %7, align 8
  br label %62

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* @devm_gpiod_release, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.gpio_desc** @devres_alloc(i32 %44, i32 8, i32 %45)
  store %struct.gpio_desc** %46, %struct.gpio_desc*** %14, align 8
  %47 = load %struct.gpio_desc**, %struct.gpio_desc*** %14, align 8
  %48 = icmp ne %struct.gpio_desc** %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  %51 = call i32 @gpiod_put(%struct.gpio_desc* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.gpio_desc* @ERR_PTR(i32 %53)
  store %struct.gpio_desc* %54, %struct.gpio_desc** %7, align 8
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  %57 = load %struct.gpio_desc**, %struct.gpio_desc*** %14, align 8
  store %struct.gpio_desc* %56, %struct.gpio_desc** %57, align 8
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = load %struct.gpio_desc**, %struct.gpio_desc*** %14, align 8
  %60 = call i32 @devres_add(%struct.device* %58, %struct.gpio_desc** %59)
  %61 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  store %struct.gpio_desc* %61, %struct.gpio_desc** %7, align 8
  br label %62

62:                                               ; preds = %55, %49, %40, %26
  %63 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  ret %struct.gpio_desc* %63
}

declare dso_local %struct.gpio_desc* @gpiod_get_from_of_node(%struct.device_node*, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.devres* @devres_find(%struct.device*, i32, i32, %struct.gpio_desc**) #1

declare dso_local %struct.gpio_desc** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @gpiod_put(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.gpio_desc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
