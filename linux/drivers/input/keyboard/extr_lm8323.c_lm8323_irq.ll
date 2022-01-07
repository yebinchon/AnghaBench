; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_chip = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LM8323_CMD_READ_INT = common dso_local global i32 0, align 4
@INT_KEYPAD = common dso_local global i32 0, align 4
@INT_ROTATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"rotator fired\0A\00", align 1
@INT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"error!\0A\00", align 1
@INT_NOINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"chip lost config; reinitialising\0A\00", align 1
@LM8323_NUM_PWMS = common dso_local global i32 0, align 4
@INT_PWM1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"pwm%d engine completed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lm8323_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8323_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lm8323_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lm8323_chip*
  store %struct.lm8323_chip* %9, %struct.lm8323_chip** %5, align 8
  %10 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %11 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  br label %13

13:                                               ; preds = %99, %2
  %14 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %15 = load i32, i32* @LM8323_CMD_READ_INT, align 4
  %16 = call i32 @lm8323_read(%struct.lm8323_chip* %14, i32 %15, i32* %6, i32 1)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i1 [ false, %13 ], [ %20, %18 ]
  br i1 %22, label %23, label %100

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @INT_KEYPAD, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %31 = call i32 @process_keys(%struct.lm8323_chip* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @INT_ROTATOR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %39 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @INT_ERROR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %50 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %55 = call i32 @lm8323_process_error(%struct.lm8323_chip* %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @INT_NOINIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %63 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %68 = call i32 @lm8323_configure(%struct.lm8323_chip* %67)
  br label %69

69:                                               ; preds = %61, %56
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @LM8323_NUM_PWMS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @INT_PWM1, align 4
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %83 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %89 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @pwm_done(i32* %93)
  br label %95

95:                                               ; preds = %81, %74
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %70

99:                                               ; preds = %70
  br label %13

100:                                              ; preds = %21
  %101 = load %struct.lm8323_chip*, %struct.lm8323_chip** %5, align 8
  %102 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm8323_read(%struct.lm8323_chip*, i32, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @process_keys(%struct.lm8323_chip*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, ...) #1

declare dso_local i32 @lm8323_process_error(%struct.lm8323_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @lm8323_configure(%struct.lm8323_chip*) #1

declare dso_local i32 @pwm_done(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
