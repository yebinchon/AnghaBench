; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_fault_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_fault_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3692x_led = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LM3692X_FAULT_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Detected a fault 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Second read of fault flags 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3692x_led*)* @lm3692x_fault_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3692x_fault_check(%struct.lm3692x_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3692x_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3692x_led* %0, %struct.lm3692x_led** %3, align 8
  %6 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %7 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LM3692X_FAULT_FLAGS, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %20 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %27 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LM3692X_FAULT_FLAGS, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.lm3692x_led*, %struct.lm3692x_led** %3, align 8
  %35 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %25
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
