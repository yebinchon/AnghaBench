; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3697.c_lm3697_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3697.c_lm3697_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3697 = type { i32, %struct.TYPE_2__*, %struct.lm3697_led*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.lm3697_led = type { i32 }

@LM3697_RESET = common dso_local global i32 0, align 4
@LM3697_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot reset the device\0A\00", align 1
@LM3697_CTRL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot write ctrl enable\0A\00", align 1
@LM3697_OUTPUT_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot write OUTPUT config\0A\00", align 1
@LM3697_MAX_CONTROL_BANKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Setting the ramp rate failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3697*)* @lm3697_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3697_init(%struct.lm3697* %0) #0 {
  %2 = alloca %struct.lm3697*, align 8
  %3 = alloca %struct.lm3697_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3697* %0, %struct.lm3697** %2, align 8
  %6 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %7 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %12 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @gpiod_direction_output(i64 %13, i32 1)
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %17 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LM3697_RESET, align 4
  %20 = load i32, i32* @LM3697_SW_RESET, align 4
  %21 = call i32 @regmap_write(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %26 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %90

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %10
  %32 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %33 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LM3697_CTRL_ENABLE, align 4
  %36 = call i32 @regmap_write(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %41 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %90

45:                                               ; preds = %31
  %46 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %47 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @LM3697_OUTPUT_CONFIG, align 4
  %50 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %51 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regmap_write(i32 %48, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %58 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %45
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %86, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @LM3697_MAX_CONTROL_BANKS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %69 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %68, i32 0, i32 2
  %70 = load %struct.lm3697_led*, %struct.lm3697_led** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.lm3697_led, %struct.lm3697_led* %70, i64 %72
  store %struct.lm3697_led* %73, %struct.lm3697_led** %3, align 8
  %74 = load %struct.lm3697_led*, %struct.lm3697_led** %3, align 8
  %75 = getelementptr inbounds %struct.lm3697_led, %struct.lm3697_led* %74, i32 0, i32 0
  %76 = call i32 @ti_lmu_common_set_ramp(i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.lm3697*, %struct.lm3697** %2, align 8
  %81 = getelementptr inbounds %struct.lm3697, %struct.lm3697* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %67
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %63

89:                                               ; preds = %63
  br label %90

90:                                               ; preds = %89, %39, %24
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ti_lmu_common_set_ramp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
