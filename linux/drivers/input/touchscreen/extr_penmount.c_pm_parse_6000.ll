; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_parse_6000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_parse_6000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm = type { i32*, i64, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm*)* @pm_parse_6000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_parse_6000(%struct.pm* %0) #0 {
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
  %12 = and i32 %11, 191
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %74

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
  br i1 %22, label %23, label %74

23:                                               ; preds = %14
  %24 = load %struct.pm*, %struct.pm** %2, align 8
  %25 = getelementptr inbounds %struct.pm, %struct.pm* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @pm_checkpacket(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = load i32, i32* @ABS_X, align 4
  %32 = load %struct.pm*, %struct.pm** %2, align 8
  %33 = getelementptr inbounds %struct.pm, %struct.pm* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 256
  %38 = load %struct.pm*, %struct.pm** %2, align 8
  %39 = getelementptr inbounds %struct.pm, %struct.pm* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %37, %42
  %44 = call i32 @input_report_abs(%struct.input_dev* %30, i32 %31, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %46 = load i32, i32* @ABS_Y, align 4
  %47 = load %struct.pm*, %struct.pm** %2, align 8
  %48 = getelementptr inbounds %struct.pm, %struct.pm* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 256
  %53 = load %struct.pm*, %struct.pm** %2, align 8
  %54 = getelementptr inbounds %struct.pm, %struct.pm* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  %59 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %46, i32 %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %61 = load i32, i32* @BTN_TOUCH, align 4
  %62 = load %struct.pm*, %struct.pm** %2, align 8
  %63 = getelementptr inbounds %struct.pm, %struct.pm* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 64
  %68 = call i32 @input_report_key(%struct.input_dev* %60, i32 %61, i32 %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %70 = call i32 @input_sync(%struct.input_dev* %69)
  br label %71

71:                                               ; preds = %29, %23
  %72 = load %struct.pm*, %struct.pm** %2, align 8
  %73 = getelementptr inbounds %struct.pm, %struct.pm* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %14, %1
  ret void
}

declare dso_local i64 @pm_checkpacket(i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
