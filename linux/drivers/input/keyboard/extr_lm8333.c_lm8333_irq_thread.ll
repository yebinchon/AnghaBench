; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8333.c_lm8333_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8333.c_lm8333_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8333 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LM8333_READ_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@LM8333_ERROR_IRQ = common dso_local global i32 0, align 4
@LM8333_READ_ERROR = common dso_local global i32 0, align 4
@LM8333_ERROR_KEYOVR = common dso_local global i32 0, align 4
@LM8333_ERROR_FIFOOVR = common dso_local global i32 0, align 4
@LM8333_FIFO_TRANSFER_SIZE = common dso_local global i32 0, align 4
@LM8333_FIFO_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Got error %02x\0A\00", align 1
@LM8333_KEYPAD_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lm8333_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8333_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lm8333*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.lm8333*
  store %struct.lm8333* %12, %struct.lm8333** %6, align 8
  %13 = load %struct.lm8333*, %struct.lm8333** %6, align 8
  %14 = load i32, i32* @LM8333_READ_INT, align 4
  %15 = call i32 @lm8333_read8(%struct.lm8333* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LM8333_ERROR_IRQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load %struct.lm8333*, %struct.lm8333** %6, align 8
  %27 = load i32, i32* @LM8333_READ_ERROR, align 4
  %28 = call i32 @lm8333_read8(%struct.lm8333* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @LM8333_ERROR_KEYOVR, align 4
  %31 = load i32, i32* @LM8333_ERROR_FIFOOVR, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load i32, i32* @LM8333_FIFO_TRANSFER_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %9, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  %40 = load %struct.lm8333*, %struct.lm8333** %6, align 8
  %41 = load i32, i32* @LM8333_FIFO_READ, align 4
  %42 = load i32, i32* @LM8333_FIFO_TRANSFER_SIZE, align 4
  %43 = call i32 @lm8333_read_block(%struct.lm8333* %40, i32 %41, i32 %42, i32* %39)
  %44 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %44)
  br label %45

45:                                               ; preds = %35, %25
  %46 = load %struct.lm8333*, %struct.lm8333** %6, align 8
  %47 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %20
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @LM8333_KEYPAD_IRQ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.lm8333*, %struct.lm8333** %6, align 8
  %59 = call i32 @lm8333_key_handler(%struct.lm8333* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @lm8333_read8(%struct.lm8333*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lm8333_read_block(%struct.lm8333*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @lm8333_key_handler(%struct.lm8333*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
