; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77843_haptic_bias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77843_haptic_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_haptic = type { i64, i32, i32 }

@TYPE_MAX77843 = common dso_local global i64 0, align 8
@MAX77843_SYS_REG_MAINCTRL1 = common dso_local global i32 0, align 4
@MAX77843_MAINCTRL1_BIASEN_MASK = common dso_local global i32 0, align 4
@MAINCTRL1_BIASEN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to %s bias: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_haptic*, i32)* @max77843_haptic_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_haptic_bias(%struct.max77693_haptic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_haptic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_haptic* %0, %struct.max77693_haptic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %8 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TYPE_MAX77843, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %15 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX77843_SYS_REG_MAINCTRL1, align 4
  %18 = load i32, i32* @MAX77843_MAINCTRL1_BIASEN_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAINCTRL1_BIASEN_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %27 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
