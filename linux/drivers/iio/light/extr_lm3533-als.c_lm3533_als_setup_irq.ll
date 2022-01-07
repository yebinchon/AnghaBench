; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3533_als = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LM3533_ALS_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@LM3533_REG_ALS_ZONE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to disable interrupts\0A\00", align 1
@lm3533_als_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3533_als*, i8*)* @lm3533_als_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_als_setup_irq(%struct.lm3533_als* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3533_als*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm3533_als* %0, %struct.lm3533_als** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @LM3533_ALS_INT_ENABLE_MASK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.lm3533_als*, %struct.lm3533_als** %4, align 8
  %10 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LM3533_REG_ALS_ZONE_INFO, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lm3533_update(i32 %11, i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.lm3533_als*, %struct.lm3533_als** %4, align 8
  %19 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.lm3533_als*, %struct.lm3533_als** %4, align 8
  %26 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @lm3533_als_isr, align 4
  %29 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %30 = load i32, i32* @IRQF_ONESHOT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.lm3533_als*, %struct.lm3533_als** %4, align 8
  %33 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_name(i32* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @request_threaded_irq(i32 %27, i32* null, i32 %28, i32 %31, i32 %36, i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %24
  %42 = load %struct.lm3533_als*, %struct.lm3533_als** %4, align 8
  %43 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.lm3533_als*, %struct.lm3533_als** %4, align 8
  %47 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %41, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @lm3533_update(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
