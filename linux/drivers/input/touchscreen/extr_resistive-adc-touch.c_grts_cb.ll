; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_resistive-adc-touch.c_grts_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_resistive-adc-touch.c_grts_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grts_state = type { i32, i32, i64, i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @grts_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grts_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.grts_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.grts_state*
  store %struct.grts_state* %14, %struct.grts_state** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %22 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32, %29
  %36 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %37 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %43 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40, %32
  %47 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %48 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BTN_TOUCH, align 4
  %51 = call i32 @input_report_key(i32 %49, i32 %50, i32 0)
  %52 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %53 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @input_sync(i32 %54)
  store i32 0, i32* %3, align 4
  br label %86

56:                                               ; preds = %40, %35
  %57 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %58 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %61 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %60, i32 0, i32 3
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @touchscreen_report_pos(i32 %59, i32* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %66 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %71 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ABS_PRESSURE, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @input_report_abs(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %56
  %77 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %78 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BTN_TOUCH, align 4
  %81 = call i32 @input_report_key(i32 %79, i32 %80, i32 1)
  %82 = load %struct.grts_state*, %struct.grts_state** %7, align 8
  %83 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @input_sync(i32 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %76, %46
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
