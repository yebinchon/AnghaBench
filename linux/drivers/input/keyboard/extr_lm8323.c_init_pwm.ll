; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_init_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_init_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_chip = type { %struct.lm8323_pwm* }
%struct.lm8323_pwm = type { i32, i32, i32, %struct.TYPE_2__, %struct.lm8323_chip*, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.device = type { i32 }

@lm8323_pwm_work = common dso_local global i32 0, align 4
@lm8323_pwm_set_brightness = common dso_local global i32 0, align 4
@lm8323_pwm_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't register PWM %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm8323_chip*, i32, %struct.device*, i8*)* @init_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pwm(%struct.lm8323_chip* %0, i32 %1, %struct.device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm8323_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lm8323_pwm*, align 8
  store %struct.lm8323_chip* %0, %struct.lm8323_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.device* %2, %struct.device** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %16 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %15, i32 0, i32 0
  %17 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %17, i64 %20
  store %struct.lm8323_pwm* %21, %struct.lm8323_pwm** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %24 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %26 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %28 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %30 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %29, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %32 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %34 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %36 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %35, i32 0, i32 6
  %37 = load i32, i32* @lm8323_pwm_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %40 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %39, i32 0, i32 5
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.lm8323_chip*, %struct.lm8323_chip** %6, align 8
  %43 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %44 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %43, i32 0, i32 4
  store %struct.lm8323_chip* %42, %struct.lm8323_chip** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %4
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %50 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* @lm8323_pwm_set_brightness, align 4
  %53 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %54 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @lm8323_pwm_groups, align 4
  %57 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %58 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %62 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %61, i32 0, i32 3
  %63 = call i64 @led_classdev_register(%struct.device* %60, %struct.TYPE_2__* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %47
  %66 = load %struct.device*, %struct.device** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 -1, i32* %5, align 4
  br label %73

69:                                               ; preds = %47
  %70 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %10, align 8
  %71 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %65
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @led_classdev_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
