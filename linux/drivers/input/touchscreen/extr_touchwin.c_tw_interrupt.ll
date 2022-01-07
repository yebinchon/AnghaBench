; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_touchwin.c_tw_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_touchwin.c_tw_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.tw = type { i32, i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@TW_LENGTH = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @tw_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.tw*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.tw* @serio_get_drvdata(%struct.serio* %9)
  store %struct.tw* %10, %struct.tw** %7, align 8
  %11 = load %struct.tw*, %struct.tw** %7, align 8
  %12 = getelementptr inbounds %struct.tw, %struct.tw* %11, i32 0, i32 3
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load i8, i8* %5, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %3
  %17 = load %struct.tw*, %struct.tw** %7, align 8
  %18 = getelementptr inbounds %struct.tw, %struct.tw* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8, i8* %5, align 1
  %20 = load %struct.tw*, %struct.tw** %7, align 8
  %21 = getelementptr inbounds %struct.tw, %struct.tw* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.tw*, %struct.tw** %7, align 8
  %24 = getelementptr inbounds %struct.tw, %struct.tw* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 %19, i8* %27, align 1
  %28 = load %struct.tw*, %struct.tw** %7, align 8
  %29 = getelementptr inbounds %struct.tw, %struct.tw* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TW_LENGTH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %16
  %34 = load %struct.tw*, %struct.tw** %7, align 8
  %35 = getelementptr inbounds %struct.tw, %struct.tw* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load %struct.tw*, %struct.tw** %7, align 8
  %41 = getelementptr inbounds %struct.tw, %struct.tw* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %33
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = load i32, i32* @ABS_X, align 4
  %50 = load %struct.tw*, %struct.tw** %7, align 8
  %51 = getelementptr inbounds %struct.tw, %struct.tw* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @input_report_abs(%struct.input_dev* %48, i32 %49, i8 zeroext %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %57 = load i32, i32* @ABS_Y, align 4
  %58 = load %struct.tw*, %struct.tw** %7, align 8
  %59 = getelementptr inbounds %struct.tw, %struct.tw* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @input_report_abs(%struct.input_dev* %56, i32 %57, i8 zeroext %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %65 = load i32, i32* @BTN_TOUCH, align 4
  %66 = call i32 @input_report_key(%struct.input_dev* %64, i32 %65, i32 1)
  %67 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %68 = call i32 @input_sync(%struct.input_dev* %67)
  %69 = load %struct.tw*, %struct.tw** %7, align 8
  %70 = getelementptr inbounds %struct.tw, %struct.tw* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %47, %33, %16
  br label %88

72:                                               ; preds = %3
  %73 = load %struct.tw*, %struct.tw** %7, align 8
  %74 = getelementptr inbounds %struct.tw, %struct.tw* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %79 = load i32, i32* @BTN_TOUCH, align 4
  %80 = call i32 @input_report_key(%struct.input_dev* %78, i32 %79, i32 0)
  %81 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %82 = call i32 @input_sync(%struct.input_dev* %81)
  %83 = load %struct.tw*, %struct.tw** %7, align 8
  %84 = getelementptr inbounds %struct.tw, %struct.tw* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.tw*, %struct.tw** %7, align 8
  %86 = getelementptr inbounds %struct.tw, %struct.tw* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %77, %72
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local %struct.tw* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
