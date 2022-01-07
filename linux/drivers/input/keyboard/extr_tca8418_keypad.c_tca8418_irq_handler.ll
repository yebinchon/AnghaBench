; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca8418_keypad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_INT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to read REG_INT_STAT\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_STAT_OVR_FLOW_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"overflow occurred\0A\00", align 1
@INT_STAT_K_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to clear REG_INT_STAT\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tca8418_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca8418_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tca8418_keypad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tca8418_keypad*
  store %struct.tca8418_keypad* %10, %struct.tca8418_keypad** %6, align 8
  %11 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %6, align 8
  %12 = load i32, i32* @REG_INT_STAT, align 4
  %13 = call i32 @tca8418_read_byte(%struct.tca8418_keypad* %11, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %6, align 8
  %18 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @INT_STAT_OVR_FLOW_INT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %6, align 8
  %35 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @INT_STAT_K_INT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %6, align 8
  %46 = call i32 @tca8418_read_keypad(%struct.tca8418_keypad* %45)
  br label %47

47:                                               ; preds = %44, %39
  store i32 255, i32* %7, align 4
  %48 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %6, align 8
  %49 = load i32, i32* @REG_INT_STAT, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %6, align 8
  %56 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %26, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @tca8418_read_byte(%struct.tca8418_keypad*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @tca8418_read_keypad(%struct.tca8418_keypad*) #1

declare dso_local i32 @tca8418_write_byte(%struct.tca8418_keypad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
