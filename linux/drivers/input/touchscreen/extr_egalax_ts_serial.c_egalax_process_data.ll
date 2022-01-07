; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts_serial.c_egalax_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts_serial.c_egalax_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.egalax = type { i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EGALAX_FORMAT_RESOLUTION_MASK = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@EGALAX_FORMAT_TOUCH_BIT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.egalax*)* @egalax_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egalax_process_data(%struct.egalax* %0) #0 {
  %2 = alloca %struct.egalax*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.egalax* %0, %struct.egalax** %2, align 8
  %9 = load %struct.egalax*, %struct.egalax** %2, align 8
  %10 = getelementptr inbounds %struct.egalax, %struct.egalax* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.egalax*, %struct.egalax** %2, align 8
  %13 = getelementptr inbounds %struct.egalax, %struct.egalax* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EGALAX_FORMAT_RESOLUTION_MASK, align 4
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 1
  %21 = sub nsw i32 3, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = ashr i32 255, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %27, %28
  %30 = shl i32 %29, 7
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = or i32 %30, %34
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  %43 = shl i32 %42, 7
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 127
  %48 = or i32 %43, %47
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = load i32, i32* @BTN_TOUCH, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EGALAX_FORMAT_TOUCH_BIT, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @input_report_key(%struct.input_dev* %51, i32 %52, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %60 = load i32, i32* @ABS_X, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @input_report_abs(%struct.input_dev* %59, i32 %60, i32 %61)
  %63 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %64 = load i32, i32* @ABS_Y, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @input_report_abs(%struct.input_dev* %63, i32 %64, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = call i32 @input_sync(%struct.input_dev* %67)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
