; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm36274.c_lm36274_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm36274.c_lm36274_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm36274 = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"No LEDs were enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LM36274_BL_EN = common dso_local global i32 0, align 4
@LM36274_REG_BL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm36274*)* @lm36274_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm36274_init(%struct.lm36274* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm36274*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm36274* %0, %struct.lm36274** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.lm36274*, %struct.lm36274** %3, align 8
  %9 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = load %struct.lm36274*, %struct.lm36274** %3, align 8
  %14 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.lm36274*, %struct.lm36274** %3, align 8
  %31 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %26
  %37 = load i32, i32* @LM36274_BL_EN, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.lm36274*, %struct.lm36274** %3, align 8
  %41 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LM36274_REG_BL_EN, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @regmap_write(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %29
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
