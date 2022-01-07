; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65218.c_tps65218_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65218.c_tps65218_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tps65218_gpio = type { %struct.tps65218* }
%struct.tps65218 = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"can't work as open source\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"GPO1 works only as open drain\0A\00", align 1
@TPS65218_REG_SEQ7 = common dso_local global i32 0, align 4
@TPS65218_SEQ7_GPO1_SEQ_MASK = common dso_local global i32 0, align 4
@TPS65218_PROTECT_L1 = common dso_local global i32 0, align 4
@TPS65218_REG_CONFIG1 = common dso_local global i32 0, align 4
@TPS65218_CONFIG1_IO1_SEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GPO3 works only as open drain\0A\00", align 1
@TPS65218_SEQ7_GPO3_SEQ_MASK = common dso_local global i32 0, align 4
@TPS65218_REG_CONFIG2 = common dso_local global i32 0, align 4
@TPS65218_CONFIG2_DC12_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tps65218_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65218_gpio*, align 8
  %7 = alloca %struct.tps65218*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.tps65218_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.tps65218_gpio* %10, %struct.tps65218_gpio** %6, align 8
  %11 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %6, align 8
  %12 = getelementptr inbounds %struct.tps65218_gpio, %struct.tps65218_gpio* %11, i32 0, i32 0
  %13 = load %struct.tps65218*, %struct.tps65218** %12, align 8
  store %struct.tps65218* %13, %struct.tps65218** %7, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @gpiochip_line_is_open_source(%struct.gpio_chip* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %104 [
    i32 0, label %27
    i32 1, label %60
    i32 2, label %71
  ]

27:                                               ; preds = %25
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gpiochip_line_is_open_drain(%struct.gpio_chip* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %34 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %108

39:                                               ; preds = %27
  %40 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %41 = load i32, i32* @TPS65218_REG_SEQ7, align 4
  %42 = load i32, i32* @TPS65218_SEQ7_GPO1_SEQ_MASK, align 4
  %43 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %44 = call i32 @tps65218_clear_bits(%struct.tps65218* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %108

49:                                               ; preds = %39
  %50 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %51 = load i32, i32* @TPS65218_REG_CONFIG1, align 4
  %52 = load i32, i32* @TPS65218_CONFIG1_IO1_SEL, align 4
  %53 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %54 = call i32 @tps65218_clear_bits(%struct.tps65218* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %108

59:                                               ; preds = %49
  br label %107

60:                                               ; preds = %25
  %61 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %62 = load i32, i32* @TPS65218_REG_CONFIG1, align 4
  %63 = load i32, i32* @TPS65218_CONFIG1_IO1_SEL, align 4
  %64 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %65 = call i32 @tps65218_clear_bits(%struct.tps65218* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %108

70:                                               ; preds = %60
  br label %107

71:                                               ; preds = %25
  %72 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @gpiochip_line_is_open_drain(%struct.gpio_chip* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %78 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %108

83:                                               ; preds = %71
  %84 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %85 = load i32, i32* @TPS65218_REG_SEQ7, align 4
  %86 = load i32, i32* @TPS65218_SEQ7_GPO3_SEQ_MASK, align 4
  %87 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %88 = call i32 @tps65218_clear_bits(%struct.tps65218* %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %108

93:                                               ; preds = %83
  %94 = load %struct.tps65218*, %struct.tps65218** %7, align 8
  %95 = load i32, i32* @TPS65218_REG_CONFIG2, align 4
  %96 = load i32, i32* @TPS65218_CONFIG2_DC12_RST, align 4
  %97 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %98 = call i32 @tps65218_clear_bits(%struct.tps65218* %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %108

103:                                              ; preds = %93
  br label %107

104:                                              ; preds = %25
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %108

107:                                              ; preds = %103, %70, %59
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %104, %101, %91, %76, %68, %57, %47, %32, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.tps65218_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @gpiochip_line_is_open_source(%struct.gpio_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gpiochip_line_is_open_drain(%struct.gpio_chip*, i32) #1

declare dso_local i32 @tps65218_clear_bits(%struct.tps65218*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
