; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_gpiod_get_from_of_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_gpiod_get_from_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device_node = type { i32 }

@GPIO_LOOKUP_FLAGS_DEFAULT = common dso_local global i64 0, align 8
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@OF_GPIO_SINGLE_ENDED = common dso_local global i32 0, align 4
@OF_GPIO_OPEN_DRAIN = common dso_local global i32 0, align 4
@OF_GPIO_TRANSITORY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8
@GPIO_OPEN_DRAIN = common dso_local global i64 0, align 8
@GPIO_OPEN_SOURCE = common dso_local global i64 0, align 8
@GPIO_TRANSITORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @gpiod_get_from_of_node(%struct.device_node* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %20 = load i64, i64* @GPIO_LOOKUP_FLAGS_DEFAULT, align 8
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %21, i8* %22, i32 %23, i32* %14)
  store %struct.gpio_desc* %24, %struct.gpio_desc** %13, align 8
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %26 = icmp ne %struct.gpio_desc* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %29 = call i64 @IS_ERR(%struct.gpio_desc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %5
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %32, %struct.gpio_desc** %6, align 8
  br label %110

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @OF_GPIO_SINGLE_ENDED, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @OF_GPIO_OPEN_DRAIN, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @OF_GPIO_TRANSITORY, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @gpiod_request(%struct.gpio_desc* %46, i8* %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %59, %struct.gpio_desc** %6, align 8
  br label %110

60:                                               ; preds = %53, %33
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %19, align 4
  %65 = call %struct.gpio_desc* @ERR_PTR(i32 %64)
  store %struct.gpio_desc* %65, %struct.gpio_desc** %6, align 8
  br label %110

66:                                               ; preds = %60
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %71 = load i64, i64* %12, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* @GPIO_OPEN_DRAIN, align 8
  %81 = load i64, i64* %12, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %12, align 8
  br label %87

83:                                               ; preds = %76
  %84 = load i64, i64* @GPIO_OPEN_SOURCE, align 8
  %85 = load i64, i64* %12, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i64, i64* @GPIO_TRANSITORY, align 8
  %93 = load i64, i64* %12, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @gpiod_configure_flags(%struct.gpio_desc* %96, i8* %97, i64 %98, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %105 = call i32 @gpiod_put(%struct.gpio_desc* %104)
  %106 = load i32, i32* %19, align 4
  %107 = call %struct.gpio_desc* @ERR_PTR(i32 %106)
  store %struct.gpio_desc* %107, %struct.gpio_desc** %6, align 8
  br label %110

108:                                              ; preds = %95
  %109 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %109, %struct.gpio_desc** %6, align 8
  br label %110

110:                                              ; preds = %108, %103, %63, %58, %31
  %111 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  ret %struct.gpio_desc* %111
}

declare dso_local %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_request(%struct.gpio_desc*, i8*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @gpiod_configure_flags(%struct.gpio_desc*, i8*, i64, i32) #1

declare dso_local i32 @gpiod_put(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
