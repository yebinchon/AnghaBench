; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_configure_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_configure_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }

@GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8
@FLAG_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIO_OPEN_DRAIN = common dso_local global i64 0, align 8
@FLAG_OPEN_DRAIN = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_OPEN_DRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"enforced open drain please flag it properly in DT/ACPI DSDT/board file\0A\00", align 1
@GPIO_OPEN_SOURCE = common dso_local global i64 0, align 8
@FLAG_OPEN_SOURCE = common dso_local global i32 0, align 4
@GPIO_PULL_UP = common dso_local global i64 0, align 8
@GPIO_PULL_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"both pull-up and pull-down enabled, invalid configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FLAG_PULL_UP = common dso_local global i32 0, align 4
@FLAG_PULL_DOWN = common dso_local global i32 0, align 4
@GPIO_TRANSITORY = common dso_local global i64 0, align 8
@GPIOD_FLAGS_BIT_DIR_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no flags found for %s\0A\00", align 1
@GPIOD_FLAGS_BIT_DIR_OUT = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_DIR_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_configure_flags(%struct.gpio_desc* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %18 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @GPIO_OPEN_DRAIN, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @FLAG_OPEN_DRAIN, align 4
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %28 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  br label %43

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GPIOD_FLAGS_BIT_OPEN_DRAIN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @FLAG_OPEN_DRAIN, align 4
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %41 = call i32 @gpiod_warn(%struct.gpio_desc* %40, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @GPIO_OPEN_SOURCE, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @FLAG_OPEN_SOURCE, align 4
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %51 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @GPIO_PULL_UP, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @GPIO_PULL_DOWN, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %65 = call i32 @gpiod_err(%struct.gpio_desc* %64, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %127

68:                                               ; preds = %58, %53
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @GPIO_PULL_UP, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @FLAG_PULL_UP, align 4
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %76 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  br label %89

78:                                               ; preds = %68
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @GPIO_PULL_DOWN, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @FLAG_PULL_DOWN, align 4
  %85 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %86 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %73
  %90 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @GPIO_TRANSITORY, align 8
  %93 = and i64 %91, %92
  %94 = call i32 @gpiod_set_transitory(%struct.gpio_desc* %90, i64 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %127

99:                                               ; preds = %89
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_SET, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  store i32 0, i32* %5, align 4
  br label %127

107:                                              ; preds = %99
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_OUT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_VAL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @gpiod_direction_output(%struct.gpio_desc* %113, i32 %120)
  store i32 %121, i32* %10, align 4
  br label %125

122:                                              ; preds = %107
  %123 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %124 = call i32 @gpiod_direction_input(%struct.gpio_desc* %123)
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %112
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %104, %97, %63
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gpiod_warn(%struct.gpio_desc*, i8*) #1

declare dso_local i32 @gpiod_err(%struct.gpio_desc*, i8*) #1

declare dso_local i32 @gpiod_set_transitory(%struct.gpio_desc*, i64) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @gpiod_direction_output(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_direction_input(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
