; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_emit_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_emit_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magicmouse_sc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@emulate_3button = common dso_local global i64 0, align 8
@middle_button_start = common dso_local global i32 0, align 4
@middle_button_stop = common dso_local global i32 0, align 4
@SCROLL_ACCEL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.magicmouse_sc*, i32)* @magicmouse_emit_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magicmouse_emit_buttons(%struct.magicmouse_sc* %0, i32 %1) #0 {
  %3 = alloca %struct.magicmouse_sc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.magicmouse_sc* %0, %struct.magicmouse_sc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @BTN_LEFT, align 4
  %9 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %10 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @test_bit(i32 %8, i32 %13)
  %15 = shl i32 %14, 0
  %16 = load i32, i32* @BTN_RIGHT, align 4
  %17 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %18 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %16, i32 %21)
  %23 = shl i32 %22, 1
  %24 = or i32 %15, %23
  %25 = load i32, i32* @BTN_MIDDLE, align 4
  %26 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %27 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @test_bit(i32 %25, i32 %30)
  %32 = shl i32 %31, 2
  %33 = or i32 %24, %32
  store i32 %33, i32* %5, align 4
  %34 = load i64, i64* @emulate_3button, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %72

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %40
  %46 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %47 = call i32 @magicmouse_firm_touch(%struct.magicmouse_sc* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %51 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @middle_button_start, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %69

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @middle_button_stop, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 2, i32* %4, align 4
  br label %68

67:                                               ; preds = %62
  store i32 4, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %74 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* @BTN_MIDDLE, align 4
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 4
  %79 = call i32 @input_report_key(%struct.TYPE_4__* %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %72, %2
  %81 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %82 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* @BTN_LEFT, align 4
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 1
  %87 = call i32 @input_report_key(%struct.TYPE_4__* %83, i32 %84, i32 %86)
  %88 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %89 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* @BTN_RIGHT, align 4
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 2
  %94 = call i32 @input_report_key(%struct.TYPE_4__* %90, i32 %91, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %80
  %99 = load i32, i32* @SCROLL_ACCEL_DEFAULT, align 4
  %100 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %3, align 8
  %101 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %80
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @magicmouse_firm_touch(%struct.magicmouse_sc*) #1

declare dso_local i32 @input_report_key(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
