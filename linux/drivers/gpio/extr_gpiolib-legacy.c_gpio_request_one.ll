; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-legacy.c_gpio_request_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-legacy.c_gpio_request_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIOF_OPEN_DRAIN = common dso_local global i64 0, align 8
@FLAG_OPEN_DRAIN = common dso_local global i32 0, align 4
@GPIOF_OPEN_SOURCE = common dso_local global i64 0, align 8
@FLAG_OPEN_SOURCE = common dso_local global i32 0, align 4
@GPIOF_ACTIVE_LOW = common dso_local global i64 0, align 8
@FLAG_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIOF_DIR_IN = common dso_local global i64 0, align 8
@GPIOF_INIT_HIGH = common dso_local global i64 0, align 8
@GPIOF_EXPORT = common dso_local global i64 0, align 8
@GPIOF_EXPORT_CHANGEABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_request_one(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.gpio_desc* @gpio_to_desc(i32 %10)
  store %struct.gpio_desc* %11, %struct.gpio_desc** %8, align 8
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %13 = icmp ne %struct.gpio_desc* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @gpio_is_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EPROBE_DEFER, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %100

21:                                               ; preds = %14, %3
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @gpiod_request(%struct.gpio_desc* %22, i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %100

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @GPIOF_OPEN_DRAIN, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @FLAG_OPEN_DRAIN, align 4
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %37 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @GPIOF_OPEN_SOURCE, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @FLAG_OPEN_SOURCE, align 4
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %47 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @GPIOF_ACTIVE_LOW, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %57 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %56, i32 0, i32 0
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @GPIOF_DIR_IN, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %66 = call i32 @gpiod_direction_input(%struct.gpio_desc* %65)
  store i32 %66, i32* %9, align 4
  br label %76

67:                                               ; preds = %59
  %68 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @GPIOF_INIT_HIGH, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = call i32 @gpiod_direction_output_raw(%struct.gpio_desc* %68, i32 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %67, %64
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %96

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @GPIOF_EXPORT, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @GPIOF_EXPORT_CHANGEABLE, align 8
  %89 = and i64 %87, %88
  %90 = call i32 @gpiod_export(%struct.gpio_desc* %86, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %96

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %80
  store i32 0, i32* %4, align 4
  br label %100

96:                                               ; preds = %93, %79
  %97 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %98 = call i32 @gpiod_free(%struct.gpio_desc* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %95, %27, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.gpio_desc* @gpio_to_desc(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpiod_request(%struct.gpio_desc*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gpiod_direction_input(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_direction_output_raw(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_export(%struct.gpio_desc*, i64) #1

declare dso_local i32 @gpiod_free(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
