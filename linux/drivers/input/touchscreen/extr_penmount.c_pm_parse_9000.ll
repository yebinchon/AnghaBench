; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_parse_9000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_parse_9000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm = type { i32*, i64, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm*)* @pm_parse_9000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_parse_9000(%struct.pm* %0) #0 {
  %2 = alloca %struct.pm*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.pm* %0, %struct.pm** %2, align 8
  %4 = load %struct.pm*, %struct.pm** %2, align 8
  %5 = getelementptr inbounds %struct.pm, %struct.pm* %4, i32 0, i32 3
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.pm*, %struct.pm** %2, align 8
  %8 = getelementptr inbounds %struct.pm, %struct.pm* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %1
  %15 = load %struct.pm*, %struct.pm** %2, align 8
  %16 = getelementptr inbounds %struct.pm, %struct.pm* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pm*, %struct.pm** %2, align 8
  %19 = getelementptr inbounds %struct.pm, %struct.pm* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %14
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = load i32, i32* @ABS_X, align 4
  %26 = load %struct.pm*, %struct.pm** %2, align 8
  %27 = getelementptr inbounds %struct.pm, %struct.pm* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 128
  %32 = load %struct.pm*, %struct.pm** %2, align 8
  %33 = getelementptr inbounds %struct.pm, %struct.pm* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %31, %36
  %38 = call i32 @input_report_abs(%struct.input_dev* %24, i32 %25, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = load i32, i32* @ABS_Y, align 4
  %41 = load %struct.pm*, %struct.pm** %2, align 8
  %42 = getelementptr inbounds %struct.pm, %struct.pm* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 128
  %47 = load %struct.pm*, %struct.pm** %2, align 8
  %48 = getelementptr inbounds %struct.pm, %struct.pm* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %46, %51
  %53 = call i32 @input_report_abs(%struct.input_dev* %39, i32 %40, i32 %52)
  %54 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %55 = load i32, i32* @BTN_TOUCH, align 4
  %56 = load %struct.pm*, %struct.pm** %2, align 8
  %57 = getelementptr inbounds %struct.pm, %struct.pm* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 64
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @input_report_key(%struct.input_dev* %54, i32 %55, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = call i32 @input_sync(%struct.input_dev* %67)
  %69 = load %struct.pm*, %struct.pm** %2, align 8
  %70 = getelementptr inbounds %struct.pm, %struct.pm* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %23, %14, %1
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
