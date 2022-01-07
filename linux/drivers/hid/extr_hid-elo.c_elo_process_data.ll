; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32*, i32)* @elo_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elo_process_data(%struct.input_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = load i32, i32* @ABS_X, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = call i32 @input_report_abs(%struct.input_dev* %8, i32 %9, i32 %17)
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = load i32, i32* @ABS_Y, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = call i32 @input_report_abs(%struct.input_dev* %19, i32 %20, i32 %28)
  store i32 0, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %35, %3
  %45 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %46 = load i32, i32* @ABS_PRESSURE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* @BTN_TOUCH, align 4
  %57 = call i32 @input_report_key(%struct.input_dev* %55, i32 %56, i32 1)
  %58 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %59 = call i32 @input_sync(%struct.input_dev* %58)
  br label %60

60:                                               ; preds = %54, %44
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %68 = load i32, i32* @BTN_TOUCH, align 4
  %69 = call i32 @input_report_key(%struct.input_dev* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %72 = call i32 @input_sync(%struct.input_dev* %71)
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
