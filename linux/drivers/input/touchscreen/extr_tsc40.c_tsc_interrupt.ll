; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc40.c_tsc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc40.c_tsc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.tsc_ser = type { i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"unsynchronized packet start (0x%02x)\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unsynchronized data 0x%02x at offset %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @tsc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsc_ser*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.tsc_ser* @serio_get_drvdata(%struct.serio* %9)
  store %struct.tsc_ser* %10, %struct.tsc_ser** %7, align 8
  %11 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %12 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %16 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %19 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %21, align 1
  %22 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %23 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  switch i64 %24, label %81 [
    i64 0, label %26
    i64 1, label %57
    i64 3, label %57
    i64 4, label %76
  ]

26:                                               ; preds = %3
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 62
  %30 = icmp ne i32 %29, 16
  %31 = zext i1 %30 to i32
  %32 = trunc i32 %31 to i8
  %33 = call i32 @unlikely(i8 zeroext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.serio*, %struct.serio** %4, align 8
  %37 = getelementptr inbounds %struct.serio, %struct.serio* %36, i32 0, i32 0
  %38 = load i8, i8* %5, align 1
  %39 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %38)
  %40 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %41 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %56

42:                                               ; preds = %26
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = load i32, i32* @BTN_TOUCH, align 4
  %50 = call i32 @input_report_key(%struct.input_dev* %48, i32 %49, i32 0)
  %51 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %52 = call i32 @input_sync(%struct.input_dev* %51)
  %53 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %54 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %35
  br label %81

57:                                               ; preds = %3, %3
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 252
  %61 = trunc i32 %60 to i8
  %62 = call i32 @unlikely(i8 zeroext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.serio*, %struct.serio** %4, align 8
  %66 = getelementptr inbounds %struct.serio, %struct.serio* %65, i32 0, i32 0
  %67 = load i8, i8* %5, align 1
  %68 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %69 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, 1
  %72 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %67, i64 %71)
  %73 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %74 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %64, %57
  br label %81

76:                                               ; preds = %3
  %77 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %78 = call i32 @tsc_process_data(%struct.tsc_ser* %77)
  %79 = load %struct.tsc_ser*, %struct.tsc_ser** %7, align 8
  %80 = getelementptr inbounds %struct.tsc_ser, %struct.tsc_ser* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %3, %76, %75, %56
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local %struct.tsc_ser* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @unlikely(i8 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @tsc_process_data(%struct.tsc_ser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
