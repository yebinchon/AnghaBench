; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_ir_in_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_ir_in_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WIIPROTO_FLAGS_IR = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@ABS_HAT2X = common dso_local global i32 0, align 4
@ABS_HAT2Y = common dso_local global i32 0, align 4
@ABS_HAT3X = common dso_local global i32 0, align 4
@ABS_HAT3Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*, i32, i32)* @wiimod_ir_in_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_ir_in_ir(%struct.wiimote_data* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiimote_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %15 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WIIPROTO_FLAGS_IR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %98

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %36 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %30
    i32 3, label %33
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @ABS_HAT0X, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @ABS_HAT0Y, align 4
  store i32 %26, i32* %12, align 4
  br label %37

27:                                               ; preds = %22
  %28 = load i32, i32* @ABS_HAT1X, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @ABS_HAT1Y, align 4
  store i32 %29, i32* %12, align 4
  br label %37

30:                                               ; preds = %22
  %31 = load i32, i32* @ABS_HAT2X, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @ABS_HAT2Y, align 4
  store i32 %32, i32* %12, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @ABS_HAT3X, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @ABS_HAT3Y, align 4
  store i32 %35, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %37

36:                                               ; preds = %22
  br label %98

37:                                               ; preds = %33, %30, %27, %24
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = shl i32 %47, 8
  %49 = or i32 %43, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 12
  %57 = shl i32 %56, 6
  %58 = or i32 %52, %57
  store i32 %58, i32* %10, align 4
  br label %78

59:                                               ; preds = %37
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 48
  %67 = shl i32 %66, 4
  %68 = or i32 %62, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 192
  %76 = shl i32 %75, 2
  %77 = or i32 %71, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %59, %40
  %79 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %80 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @input_report_abs(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %86 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @input_report_abs(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %95 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @input_sync(i32 %96)
  br label %98

98:                                               ; preds = %21, %36, %93, %78
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
