; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-da9052.c_da9052_configure_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-da9052.c_da9052_configure_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32 }

@DA9052_OPENDRAIN_OUTPUT = common dso_local global i8 0, align 1
@DA9052_SET_HIGH_LVL_OUTPUT = common dso_local global i8 0, align 1
@DA9052_GPIO_14_15_REG = common dso_local global i32 0, align 4
@DA9052_MASK_LOWER_NIBBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to write GPIO 14-15 reg, %d\0A\00", align 1
@DA9052_MASK_UPPER_NIBBLE = common dso_local global i32 0, align 4
@DA9052_NIBBLE_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052*)* @da9052_configure_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_configure_leds(%struct.da9052* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9052*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.da9052* %0, %struct.da9052** %3, align 8
  %6 = load i8, i8* @DA9052_OPENDRAIN_OUTPUT, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @DA9052_SET_HIGH_LVL_OUTPUT, align 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %7, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %5, align 1
  %12 = load %struct.da9052*, %struct.da9052** %3, align 8
  %13 = load i32, i32* @DA9052_GPIO_14_15_REG, align 4
  %14 = load i32, i32* @DA9052_MASK_LOWER_NIBBLE, align 4
  %15 = load i8, i8* %5, align 1
  %16 = call i32 @da9052_reg_update(%struct.da9052* %12, i32 %13, i32 %14, i8 zeroext %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.da9052*, %struct.da9052** %3, align 8
  %21 = getelementptr inbounds %struct.da9052, %struct.da9052* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %1
  %27 = load %struct.da9052*, %struct.da9052** %3, align 8
  %28 = load i32, i32* @DA9052_GPIO_14_15_REG, align 4
  %29 = load i32, i32* @DA9052_MASK_UPPER_NIBBLE, align 4
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @DA9052_NIBBLE_SHIFT, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = call i32 @da9052_reg_update(%struct.da9052* %27, i32 %28, i32 %29, i8 zeroext %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.da9052*, %struct.da9052** %3, align 8
  %41 = getelementptr inbounds %struct.da9052, %struct.da9052* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %26
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @da9052_reg_update(%struct.da9052*, i32, i32, i8 zeroext) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
