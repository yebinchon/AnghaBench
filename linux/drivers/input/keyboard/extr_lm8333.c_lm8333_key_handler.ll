; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8333.c_lm8333_key_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8333.c_lm8333_key_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8333 = type { i32*, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@LM8333_FIFO_TRANSFER_SIZE = common dso_local global i32 0, align 4
@LM8333_FIFO_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error %d while reading FIFO\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm8333*)* @lm8333_key_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm8333_key_handler(%struct.lm8333* %0) #0 {
  %2 = alloca %struct.lm8333*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lm8333* %0, %struct.lm8333** %2, align 8
  %11 = load %struct.lm8333*, %struct.lm8333** %2, align 8
  %12 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %3, align 8
  %14 = load i32, i32* @LM8333_FIFO_TRANSFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.lm8333*, %struct.lm8333** %2, align 8
  %19 = load i32, i32* @LM8333_FIFO_READ, align 4
  %20 = load i32, i32* @LM8333_FIFO_TRANSFER_SIZE, align 4
  %21 = call i32 @lm8333_read_block(%struct.lm8333* %18, i32 %19, i32 %20, i32* %17)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @LM8333_FIFO_TRANSFER_SIZE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.lm8333*, %struct.lm8333** %2, align 8
  %27 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 1, i32* %10, align 4
  br label %77

32:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %71, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @LM8333_FIFO_TRANSFER_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %17, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ false, %33 ], [ %42, %37 ]
  br i1 %44, label %45, label %74

45:                                               ; preds = %43
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %17, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %17, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 127
  store i32 %55, i32* %6, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %57 = load i32, i32* @EV_MSC, align 4
  %58 = load i32, i32* @MSC_SCAN, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @input_event(%struct.input_dev* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %62 = load %struct.lm8333*, %struct.lm8333** %2, align 8
  %63 = getelementptr inbounds %struct.lm8333, %struct.lm8333* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @input_report_key(%struct.input_dev* %61, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %45
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %33

74:                                               ; preds = %43
  %75 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %76 = call i32 @input_sync(%struct.input_dev* %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %25
  %78 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %10, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 1, label %80
  ]

80:                                               ; preds = %77, %77
  ret void

81:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lm8333_read_block(%struct.lm8333*, i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
